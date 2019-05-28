create or replace func_testejob(paumento in number)
return number
is

begin
    update personagem set salario = salario + paumento
    where i9d = 1;
    commit;
    return 0;
end;
