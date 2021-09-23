DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email_recebido VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
DECLARE employeeJobs INT;
SELECT COUNT(jh.EMPLOYEE_ID) AS total_empregos
FROM hr.employees AS e
INNER JOIN hr.job_history AS jh ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE e.EMAIL = email_recebido INTO employeeJobs;
RETURN employeeJobs;
END $$

DELIMITER ;

SELECT buscar_quantidade_de_empregos_por_funcionario('NKOCHHAR');
