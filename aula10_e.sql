create or replace
function func_aumentosalpersonagem(p_id in number, p_novosalario in number)
return number
is
    retorno number(3) : = 0;
    qtde number(1);
    vsalario personagem.salario%type;
    vparametros varchar2(4000);
    vnumero number(6);
    vdescrerro varchar2(4000);
    
begin
    if p_novosalario > 0 and p_novosalario < 9999999.99 then
        select count(*) into qtde from personagem where id = p_id;
        if qtde = 1 then
            select salario into vsalario from personagem where id = p_id;
            update personagem set salario = p_novosalario where id = p_id;
            insert into log_personagem( id_log, id, salario,_velho, salario_novo, usuario, datahora)
                values(seq_log_progexec.nextval, p_id, vsalario, p_novosalario, user, sysdate);
        else
            retorno := -998;
        end if;
    else
        returno := -999;
    end if;
    commit;
    return retorno;
exception
  when others then
    rollback;
    vparametros := 'p_id = ' || p_id || ','
                || 'p_novosalario = ' || p_novosalario;
    vnumero := sqlcode;
    vdescrerro := sqlerrm;
    insert into log_programacaoexecucao (id_log, nome_do_codigo, parametros, numero_erro,
      descricao_erro, numero_linha_erro, usuario, datahora, status, descricao_solucao) values
      (seq_log_progexec.nextval,'func_aumentosalpersonagem', vparametros, vnumero, vdescrerro,
      dbms_utility.format_error_backtrace(), user, sysdate, 'e', null);
    commit;
    return sqlcode;
end;


declare
   number x;
begin
    x := func_aumentosalpersonagem(3999);
    dbms_output.put_line('Novo salario: '||x);
end;
