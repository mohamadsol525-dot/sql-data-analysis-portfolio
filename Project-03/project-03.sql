/* =========================================================
   Project 03
   Database: Northwind
   Topic: Relational Data Analysis with SQL JOINs
   ========================================================= */


-- =========================================================
-- Overview: Retrieve information from multiple related
-- tables using JOIN operations.
-- =========================================================

USE NORTHWND;

SELECT TOP 10
    od.OrderID,
    od.UnitPrice,
    o.OrderDate,
    p.ProductName,
    p.UnitPrice,
    c.CompanyName,
    c.City,
    e.LastName,
    e.FirstName,
    ca.CategoryName,
    s.Phone
FROM [Order Details] AS od
    JOIN Orders AS o
        ON od.OrderID = o.OrderID
    JOIN Products AS p
        ON od.ProductID = p.ProductID
    JOIN Customers AS c
        ON o.CustomerID = c.CustomerID
    JOIN Employees AS e
        ON o.EmployeeID = e.EmployeeID
    JOIN Categories AS ca
        ON p.CategoryID = ca.CategoryID
    JOIN Suppliers AS s
        ON p.SupplierID = s.SupplierID;


-- =========================================================
-- Part 1
-- Retrieve customers who have placed orders.
-- =========================================================

SELECT
    c.ContactName,
    o.OrderID
FROM Orders AS o
JOIN Customers AS c
    ON o.CustomerID = c.CustomerID;


-- =========================================================
-- Part 2
-- Retrieve all customers and their orders.
-- LEFT JOIN is used to include customers even if
-- they do not have an order.
-- =========================================================

SELECT
    c.ContactName,
    o.OrderID
FROM Customers AS c
LEFT JOIN Orders AS o
    ON o.CustomerID = c.CustomerID;


-- =========================================================
-- Part 3
-- Find customers who have not placed any orders.
-- =========================================================

SELECT
    c.ContactName
FROM Customers AS c
LEFT JOIN Orders AS o
    ON c.CustomerID = o.CustomerID
WHERE o.OrderDate IS NULL
GROUP BY c.ContactName;


-- =========================================================
-- Part 4
-- Retrieve products and their corresponding categories.
-- =========================================================

SELECT
    p.ProductName,
    c.CategoryName
FROM Products AS p
JOIN Categories AS c
    ON p.CategoryID = c.CategoryID;


-- =========================================================
-- Part 5
-- Retrieve products together with their suppliers
-- and corresponding categories.
-- =========================================================

SELECT
    p.ProductName,
    s.CompanyName,
    c.CategoryName
FROM Products AS p
JOIN Suppliers AS s
    ON p.SupplierID = s.SupplierID
JOIN Categories AS c
    ON c.CategoryID = p.CategoryID;


-- =========================================================
-- Part 6
-- Find products that do not have a matching category.
-- =========================================================

SELECT *
FROM Products AS p
LEFT JOIN Categories AS ca
    ON ca.CategoryID = p.CategoryID
WHERE ca.CategoryName IS NULL;


-- =========================================================
-- Part 7
-- Retrieve orders and the products included in those orders.
-- =========================================================

SELECT
    o.OrderID,
    p.ProductID,
    p.ProductName
FROM [Order Details] AS o
JOIN Products AS p
    ON o.ProductID = p.ProductID;