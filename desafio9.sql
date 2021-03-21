SELECT CONCAT(FirstName, ' ', LastName) AS 'Nome completo',
COUNT(OrderID) AS 'Total de pedidos'
FROM w3schools.employees AS E
INNER JOIN w3schools.orders AS O ON E.EmployeeID = O.EmployeeID
GROUP BY O.EmployeeID
ORDER BY COUNT(OrderID);
