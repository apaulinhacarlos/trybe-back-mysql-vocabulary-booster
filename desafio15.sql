DELIMITER $$

CREATE PROCEDURE buscar_media_por_cargo(IN cargo VARCHAR(100))
BEGIN
SELECT 
ROUND((SUM(e.SALARY) / COUNT(e.SALARY)), 2) AS `Média salarial`
FROM hr.employees AS e
INNER JOIN hr.jobs AS j ON e.JOB_ID = j.JOB_ID
WHERE j.JOB_TITLE LIKE CONCAT('%', cargo, '%');
END $$

DELIMITER ;

CALL buscar_media_por_cargo('Programmer');
