CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE alunos(
id BIGINT AUTO_INCREMENT,
aluno VARCHAR(255),
datanascimento DATE,
turma DECIMAL,
nota DECIMAL,
PRIMARY KEY(id)
);

INSERT INTO alunos(aluno, datanascimento, turma, nota) VALUES
("Ana Maria", "2000-08-08", "1","8.00"),
("Ana Julia", "2000-08-09", "1","7.00"),
("Ana Carla", "2000-08-07", "1","6.00"),
("Ana Raquel", "2000-08-06", "1","5.00"),
("Ana Sara", "2000-08-05", "1","4.00"),
("Ana Carolina", "2000-08-04", "1","5.00"),
("Ana", "2000-08-03", "1","6.00"),
("Ana Marcia", "2000-08-02", "1","7.00"),
("Ana Laura", "2000-08-01", "1","8.00");

SELECT * FROM alunos;

SELECT * FROM  alunos where nota > 7.00;

SELECT * FROM  alunos where nota < 7.00;

UPDATE alunos SET nota = 8.00 WHERE id = 5;