SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS `Nome Completo`,
(SELECT j.JOB_TITLE FROM hr.jobs AS j
WHERE j.JOB_ID = e.JOB_ID) AS Cargo,
HIRE_DATE AS `Data de início do cargo`,
(SELECT d.DEPARTMENT_NAME FROM hr.departments AS d
WHERE d.DEPARTMENT_ID = e.DEPARTMENT_ID) AS Departamento
FROM hr.employees AS e;
