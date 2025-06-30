-- Contagem de presenças por aluno
SELECT a.nome, COUNT(p.id) AS total_presencas
FROM alunos a
LEFT JOIN presencas p ON a.id = p.id_aluno
GROUP BY a.nome;

-- Trigger para evitar presença duplicada no mesmo dia
DELIMITER $$

CREATE TRIGGER evitar_presenca_duplicada
BEFORE INSERT ON presencas
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM presencas
        WHERE id_aluno = NEW.id_aluno
          AND data_presenca = NEW.data_presenca
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Este aluno já registrou presença neste dia.';
    END IF;
END$$

DELIMITER ;
