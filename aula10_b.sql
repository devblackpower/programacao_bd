create or replace
function func_divisao(pdivisor in number, pdividendo in number)
return number
is
  vresultado number(2);
  vparametros varchar2(4000);
  vnumero number(6);
  vdescrerro varchar2(4000);
begin
  vresultado := pdivisor / pdividendo;
  return vresultado;
exception
  when others then
    rollback;
    vparametros := 'pdivisor = ' || pdivisor || ','
                || 'pdividendo = ' || pdividendo;
    vnumero := sqlcode;
    vdescrerro := sqlerrm;
    insert into log_programacaoexecucao (id_log, nome_do_codigo, parametros, numero_erro,
      descricao_erro, numero_linha_erro, usuario, datahora, status, descricao_solucao) values
      (seq_log_progexec.nextval,'func_divisao', vparametros, vnumero, vdescrerro,
      dbms_utility.format_error_backtrace(), user, sysdate, 'e', null);
    commit;
    return sqlcode;
end;
