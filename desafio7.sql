SELECT UCASE(CONCAT(E.FIRST_NAME,' ', E.LAST_NAME)) AS ' nome completo ',
JS.START_DATE AS 'Data de início do cargo', E.SALARY AS 'Salário'
FROM hr.job_history AS JS
INNER JOIN hr.employees AS E ON E.EMPLOYEE_ID = JS.EMPLOYEE_ID
INNER JOIN hr.jobs AS J ON J.JOB_ID = JS.JOB_ID
WHERE MONTH(START_DATE) IN ('01', '02', '03')
ORDER BY 'nome completo', MONTH(START_DATE);
