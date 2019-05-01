create table personagem(
    id number primary key,
    nome varchar2(120) not null,
    salario number(10,2) not null
);

insert into personagem(id, nome, salario)
values(1, 'João', 1000);
insert into personagem(id, nome, salario)
values(2, 'Maria', 2000);
insert into personagem(id, nome, salario)
values(3, 'Claudio', 500);
commit;
