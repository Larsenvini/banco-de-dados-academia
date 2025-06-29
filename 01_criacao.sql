-- Alunos: João Pedro Moreira Canha, Eric Nascimento de Oliveira,
-- Daniel Mansur Sedano e Vinicius Larsen Santos

CREATE DATABASE IF NOT EXISTS academia_db;
USE academia_db;

-- Tabela de alunos
CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    data_nascimento DATE,
    telefone VARCHAR(15)
);

-- Tabela de planos
CREATE TABLE planos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    preco DECIMAL(10, 2),
    duracao_meses INT
);

-- Tabela de matrículas
CREATE TABLE matriculas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    id_plano INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id),
    FOREIGN KEY (id_plano) REFERENCES planos(id)
);

-- Tabela de treinos
CREATE TABLE treinos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT
);

-- Tabela de exercícios
CREATE TABLE exercicios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    grupo_muscular VARCHAR(50)
);

-- Tabela de treino_exercicio (relação N:N entre treino e exercício)
CREATE TABLE treino_exercicio (
    id_treino INT,
    id_exercicio INT,
    series INT,
    repeticoes INT,
    PRIMARY KEY (id_treino, id_exercicio),
    FOREIGN KEY (id_treino) REFERENCES treinos(id),
    FOREIGN KEY (id_exercicio) REFERENCES exercicios(id)
);

-- Tabela de presenças
CREATE TABLE presencas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_aluno INT,
    data_presenca DATE,
    FOREIGN KEY (id_aluno) REFERENCES alunos(id)
);
