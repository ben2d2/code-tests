-- Question 5
-- A. Return the names of all salespeople that have an order with George

SELECT DISTINCT Salesperson.name FROM Salesperson
INNER JOIN Orders ON(Salesperson.SalespersonID = Orders.SalespersonID)
INNER JOIN Customer ON(Customer.CustomerID = Orders.CustomerID)
WHERE Customer.Name = 'George';
