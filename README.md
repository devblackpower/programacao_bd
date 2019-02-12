# programacao_bd

//examples to declare in pl/sql
declare
  a number(3) := 3;
  b number(3) := 4;
  c number(4);
begin
  c := a + b;
end;

declare
  a number(3) := 3;
  b number(3) := 4;
  c number(4);
begin
  c = a + b;
end;

declare
  a number(3) := 3;
  b number(3) := 4;
  c number(4);
begin
  c = a + b;
end;


declare
  a number(3) := 3;
  b number(3) := 0;
  c number(4);
begin
  c := a / b;
end;
