ALTER TABLE alunos ADD COLUMN telefone VARCHAR(20) NULL;

ALTER TABLE matriculas MODIFY COLUMN curso VARCHAR(150);

ALTER TABLE matriculas ADD CONSTRAINT fk_aluno_id FOREIGN KEY(aluno_id) REFERENCES alunos(id);

CREATE VIEW consulta_admistrativa AS SELECT a.id AS id_aluno, a.nome AS nome_aluno, m.curso, m.data_matricula FROM alunos a JOIN matriculas m ON a.id = m.aluno_id;

DROP TABLE alunos;

INSERT INTO alunos (id, nome, telefone) VALUES (4, 'Hernandes', NULL), (5, 'Jorge', '+55brasil+ddd32999219921');

SELECT * FROM consulta_admistrativa;

docker exec -i mysql_bd2 mysql -u dev -p'minhasenha' --database universidade < schema_atualizado.sql