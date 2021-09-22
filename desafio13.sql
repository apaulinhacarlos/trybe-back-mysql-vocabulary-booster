SELECT
p.ProductName AS Produto,
p.Price AS Preço
FROM w3schools.products AS p
INNER JOIN w3schools.order_details AS o
WHERE p.ProductID = o.ProductID
AND o.Quantity > 80
ORDER BY Produto;
