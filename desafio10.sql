SELECT ProductName As 'Produto', MIN(Quantity) AS 'Mínima'
, MAX(Quantity) AS 'Máxima', ROUND(AVG(Quantity),2) AS 'Média'
FROM w3schools.products AS P
INNER JOIN w3schools.order_details AS O ON O.ProductID = P.ProductID
GROUP BY ProductName
ORDER BY ROUND(AVG(Quantity),2), ProductName;
