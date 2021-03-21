SELECT A.ContactName AS 'Nome', A.Country AS 'País', COUNT(*) AS 'Número de compatriotas'
FROM w3schools.customers AS A, w3schools.customers AS B
WHERE A.CustomerID <> B.CustomerID
AND A.Country = B.Country
GROUP BY A.CustomerID
ORDER BY A.ContactName;
