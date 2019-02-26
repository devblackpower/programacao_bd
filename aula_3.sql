create or replace function func_retornodept(p_id in number)
  return varchar2
  is retorno varchar2(20);
  
begin
  if p_id > 0 and p_id < = 999999 then
  
  
  
  else
      retorno := 'id fora da faixa';
  end if;
  return retorno;
end;
