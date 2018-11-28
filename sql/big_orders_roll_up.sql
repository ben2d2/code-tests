-- Question 6
-- B. Create a new roll-up table BigOrders(where columns are CustomerID,
-- TotalOrderValue), and insert into that table customers whose total Amount
-- across all orders is greater than 1000

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
