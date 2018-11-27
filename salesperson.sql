-- A. Return the names of all salespeople that have an order with George
SELECT DISTINCT Salesperson.name FROM Salesperson
INNER JOIN Orders ON(Salesperson.SalespersonID = Orders.SalespersonID)
INNER JOIN Customer ON(Customer.CustomerID = Orders.CustomerID)
WHERE Customer.Name = 'George';


-- B. Return the names of all salespeople that do not have any order with George
SELECT DISTINCT Salesperson.name FROM Salesperson
INNER JOIN Orders ON(Salesperson.SalespersonID = Orders.SalespersonID)
INNER JOIN Customer ON(Customer.CustomerID = Orders.CustomerID)
WHERE Customer.Name != 'George'

UNION

SELECT DISTINCT Salesperson.name FROM Salesperson
WHERE Salesperson.SalespersonID NOT IN(
  SELECT Orders.SalespersonID FROM Orders
  WHERE Salesperson.SalespersonID = Orders.SalespersonID
);


-- C. Return the names of salespeople that have 2 or more orders.
SELECT DISTINCT Salesperson.name FROM Salesperson
INNER JOIN Orders ON(Salesperson.SalespersonID = Orders.SalespersonID)
GROUP BY Salesperson.name
HAVING COUNT(Orders) >= 2;
