create table log_personagem(
    id_log number primary key,
    id number not null,
    salario_velho number(10,2) not null,
    salario_novo number(10,2) not null,
    usuario varchar(30) not null,
    datahora date not null,
    constraint fk_pers_logpers foreign key (id) references personagem(id)
);

