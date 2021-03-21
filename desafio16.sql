DELIMITER $$

CREATE FUNCTION buscar_quantidade_de_empregos_por_funcionario(email VARCHAR(100))
RETURNS INT READS SQL DATA
BEGIN
    DECLARE number_jobs INT;
    SELECT COUNT(*)
    FROM hr.employees AS E
    INNER JOIN hr.job_history AS J ON J.EMPLOYEE_ID = E.EMPLOYEE_ID
    WHERE E.EMAIL = email INTO number_jobs;
    RETURN number_jobs;
END $$

DELIMITER ;
