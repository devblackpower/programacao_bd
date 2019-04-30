create table log_programacaoexecucao(
  id_log number primary key,
  nome_do_codigo Varchar2(30) not null,
  parametros varchar2(4000) null,
  numero_erro number(6) not null,
  descricao_erro varchar2(4000) not null,
  numero_linha_erro varchar2(4000) not null,
  usuario varchar2(30) not null,
  datahora date not null,
  status char(1) not null,
  descricao_solucao varchar2(120) null,
  constraint ck_status_logprogexec check (status in('e', 'r'))
);
