drop table cores;

CREATE TABLE CORES (
  ID NUMBER(2) PRIMARY KEY,
  NAME VARCHAR(120) NOT NULL,
  constraint uq_cor_name unique (name)
);

INSERT INTO CORES(ID, name) VALUES
  (1, 'azul');
commit;


select id, name from cores;
