-- Using postgresql 9.6
-- createdb cm-tests
-- psql cm-tests

CREATE TABLE Salesperson (
    SalespersonID int,
    Name varchar(255),
    Age int,
    Salary int
);

INSERT INTO salesperson(SalespersonID,Name,Age,Salary)
VALUES (1, 'Alice', 61, 140000),
       (2, 'Bob', 34, 44000),
       (6, 'Chris', 34, 40000),
       (8, 'Derek', 41, 52000),
       (11, 'Emmit', 57, 115000),
       (16, 'Fred', 38, 38000);


CREATE TABLE Customer (
   CustomerID int,
   Name varchar(255)
);

INSERT INTO customer(CustomerID,Name)
VALUES (4, 'George'),
       (6, 'Harry'),
       (7, 'Ingrid'),
       (11, 'Jerry');


CREATE TABLE Orders (
    OrderID int,
    OrderDate date,
    CustomerID int,
    SalespersonID int,
    NumberOfUnits int,
    CostOfUnit int
);

INSERT INTO orders(OrderID,OrderDate,CustomerID,SalespersonID,NumberOfUnits,CostOfUnit)
VALUES (3, '01/17/2013', 4, 2, 4, 400),
       (6, '02/07/2013', 4, 1, 1, 600),
       (10, '03/04/2013', 7, 6, 2, 300),
       (17, '03/15/2013', 6, 1, 5, 300),
       (25, '04/19/2013', 11, 11, 7, 300),
       (34, '04/22/2013', 11, 11, 100, 26),
       (57, '07/12/2013', 7, 11, 14, 11);
