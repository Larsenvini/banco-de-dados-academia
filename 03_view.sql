USE academia_db;

-- View para exibir alunos com seus planos
CREATE VIEW view_alunos_planos AS
SELECT a.nome AS aluno, p.nome AS plano, p.duracao_meses, m.data_inicio
FROM alunos a
JOIN matriculas m ON a.id = m.id_aluno
JOIN planos p ON m.id_plano = p.id;
