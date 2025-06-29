-- Contagem de presenças por aluno
SELECT a.nome, COUNT(p.id) AS total_presencas
FROM alunos a
LEFT JOIN presencas p ON a.id = p.id_aluno
GROUP BY a.nome;
