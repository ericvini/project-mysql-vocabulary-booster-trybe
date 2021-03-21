SELECT JOB_TITLE AS 'Cargo', ROUND(AVG(SALARY),2) AS 'Média salarial',
CASE
WHEN ROUND(AVG(SALARY),2) BETWEEN 2000  AND 5800  THEN 'Júnior'
    WHEN ROUND(AVG(SALARY),2) BETWEEN 5801  AND 7500 THEN 'Pleno'
    WHEN ROUND(AVG(SALARY),2) BETWEEN 7501  AND 10500 THEN 'Sênior'
    WHEN ROUND(AVG(SALARY),2) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees AS E
INNER JOIN hr.jobs AS J ON J.JOB_ID = E.JOB_ID
GROUP BY JOB_TITLE
ORDER BY ROUND(AVG(SALARY),2), JOB_TITLE;
