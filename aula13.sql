create or replace function func_testejob(paumento in number)
return number
is

begin
    update personagem set salario = salario + paumento
    where id = 1;
    commit;
    return 0;
end;
