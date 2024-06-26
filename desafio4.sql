SELECT 
(SELECT j.JOB_TITLE FROM hr.jobs AS j
WHERE j.JOB_ID = e.JOB_ID) AS Cargo,
ROUND(AVG(SALARY), 2) AS `Média salarial`,
CASE
WHEN ROUND(AVG(SALARY), 2) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN ROUND(AVG(SALARY), 2) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN ROUND(AVG(SALARY), 2) BETWEEN 7501 AND 10500 THEN 'Sênior'
ELSE 'CEO'
END AS Senioridade
FROM hr.employees AS e
GROUP BY JOB_ID
ORDER BY `Média salarial`, Cargo;
