-- Question 6
-- C. Return the total Amount of orders for each month, ordered by year, then
-- month (both in descending order)

SELECT DATE_TRUNC('month', Orders.OrderDate)::DATE AS Month, COUNT(*) AS TotalOrders, SUM(Orders.NumberOfUnits*Orders.CostOfUnit) AS TotalAmount
FROM Orders
GROUP BY Month
ORDER BY DATE_TRUNC('month', Orders.OrderDate)::DATE, Month DESC;
