SELECT 
UCASE(CONCAT(FIRST_NAME, ' ', LAST_NAME)) AS `Nome completo`,
jh.START_DATE AS `Data de início`,
e.SALARY AS Salário
FROM hr.job_history AS jh
INNER JOIN employees AS e ON e.EMPLOYEE_ID = jh.EMPLOYEE_ID
WHERE MONTH(jh.START_DATE) BETWEEN 01 AND 03
ORDER BY `Nome completo`, `Data de início`;
