USE academia_db;

-- Alunos
INSERT INTO alunos (nome, cpf, data_nascimento, telefone) VALUES
('João Pedro', '123.456.789-00', '2000-01-15', '21999999999'),
('Eric Nascimento', '987.654.321-00', '1998-06-22', '21988888888');

-- Planos
INSERT INTO planos (nome, preco, duracao_meses) VALUES
('Mensal', 100.00, 1),
('Trimestral', 270.00, 3),
('Anual', 900.00, 12);

-- Matrículas
INSERT INTO matriculas (id_aluno, id_plano, data_inicio, data_fim) VALUES
(1, 1, '2025-01-01', '2025-01-31'),
(2, 2, '2025-01-10', '2025-04-10');

-- Exercícios
INSERT INTO exercicios (nome, grupo_muscular) VALUES
('Supino Reto', 'Peito'),
('Agachamento', 'Pernas'),
('Puxada Frontal', 'Costas');

-- Treinos
INSERT INTO treinos (nome, descricao) VALUES
('Treino A', 'Treino de peito e tríceps'),
('Treino B', 'Treino de pernas');

-- Relação treino - exercício
INSERT INTO treino_exercicio VALUES
(1, 1, 4, 10),
(2, 2, 4, 12);
