-- Question 5
-- C. Return the names of salespeople that have 2 or more orders.
SELECT DISTINCT Salesperson.name FROM Salesperson
INNER JOIN Orders ON(Salesperson.SalespersonID = Orders.SalespersonID)
GROUP BY Salesperson.name
HAVING COUNT(Orders) >= 2;
