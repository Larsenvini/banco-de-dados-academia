USE academia_db;

-- Lista de todos os alunos e os exercícios dos treinos atribuídos a cada um
SELECT a.nome AS aluno, t.nome AS treino, e.nome AS exercicio, te.series, te.repeticoes
FROM alunos a
JOIN matriculas m ON a.id = m.id_aluno
JOIN treinos t ON t.id = 1 -- Supondo treino fixo para exemplo
JOIN treino_exercicio te ON t.id = te.id_treino
JOIN exercicios e ON te.id_exercicio = e.id;
