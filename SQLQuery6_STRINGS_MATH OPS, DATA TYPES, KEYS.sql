
-- STRING FUNCTIONS
-- https://www.sqlservertutorial.net/sql-server-string-functions/

-- CONCAT: put together both columns in one
SELECT CONCAT (FirstName, ' ', LastName)
FROM Person.Person;

-- UPPER CASE
SELECT UPPER (FirstName)
FROM Person.Person;

-- LOWER CASE
SELECT LOWER (FirstName)
FROM Person.Person;

-- LEN: count the lenght
SELECT FirstName, LEN (FirstName)
FROM Person.Person;

-- SUBSTRING: extracts only a part of the string (use index)
SELECT FirstName, SUBSTRING (FirstName, 1,3) -- from first letter to third letter
FROM Person.Person;

-- REPLACE
SELECT REPLACE (ProductNumber, '-', '#') -- column name, what I want to replace and for what it will be replaced
FROM Production.Product;



-- MATHEMATICAL OPERATIONS

SELECT *
FROM Sales.SalesOrderDetail;

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail;

-- Same apply for -, / , * 

SELECT AVG(LineTotal)
FROM Sales.SalesOrderDetail;

-- Same apply for SUM, MIN, MAX

SELECT ROUND(LineTotal, 2)
FROM Sales.SalesOrderDetail;

SELECT SQRT (LineTotal)
FROM Sales.SalesOrderDetail;



-- DATA TYPES

-- Boolean (BIT): standard is 0 = False and 1 = True
-- Strings (CHAR): fixed size / VARCHAR: not fixed
-- Integers (INT): whole number
-- Float (FLOAT): decimals
-- Real (REAL): similar to FLOAT

-- DATE: aaaa/mm/dd
-- DATETIME: aaaa/mm/dd:hh:mm:ss



