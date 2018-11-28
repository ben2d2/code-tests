-- Question 5
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




-- Question 6
-- A. Return the name of the salesperson with the 3rd highest salary.
SELECT Salesperson.Name FROM (
  SELECT *, Rank() OVER (ORDER BY Salary DESC) AS SalaryRank
  FROM Salesperson
) AS Salesperson
WHERE SalaryRank = 3;

-- B. Create a new roll-up table BigOrders(where columns are CustomerID, TotalOrderValue), and insert into that table customers whose total Amount across all orders is greater than 1000
CREATE TABLE BigOrders (
    CustomerID int,
    TotalOrderValue int
);

INSERT INTO BigOrders
SELECT * FROM (
  SELECT Orders.CustomerID, (Orders.NumberOfUnits*Orders.CostOfUnit) AS TotalOrderValue
  FROM Orders
) AS Orders
WHERE TotalOrderValue >= 1000;

-- C. Return the total Amount of orders for each month, ordered by year, then month (both in descending order)
SELECT DATE_TRUNC('month', Orders.OrderDate)::DATE AS Month, COUNT(*) AS TotalOrders
FROM Orders
GROUP BY Month
ORDER BY DATE_TRUNC('month', Orders.OrderDate)::DATE, Month DESC;
