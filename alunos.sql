CREATE DATABASE ssql;

USE ssql;

CREATE TABLE alunos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  turma VARCHAR(10) NOT NULL,
  ano INT NOT NULL,
  nota FLOAT NOT NULL,
  aprovado ENUM('Aprovado', 'Recuperação', 'Reprovado')
);

CREATE TABLE professores (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL
);

INSERT INTO professores (nome) VALUES ('Professor A'), ('Professor B'), ('Professor C');

INSERT INTO alunos (nome, turma, ano, nota, aprovado) VALUES
  ('Aluno 1', 'Turma A', 2023, 7.5, 'Aprovado'),
  ('Aluno 2', 'Turma B', 2023, 5.2, 'Recuperação'),
  ('Aluno 3', 'Turma A', 2023, 3.8, 'Reprovado');

SELECT alunos.nome, professores.nome AS professor, alunos.turma, alunos.ano, alunos.aprovado
FROM alunos
JOIN professores ON alunos.id = professores.id;
