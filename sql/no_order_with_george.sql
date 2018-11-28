-- Question 5
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
