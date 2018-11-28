-- Question 6
-- A. Return the name of the salesperson with the 3rd highest salary.

SELECT Salesperson.Name FROM (
  SELECT *, Rank() OVER (ORDER BY Salary DESC) AS SalaryRank
  FROM Salesperson
) AS Salesperson
WHERE SalaryRank = 3;
