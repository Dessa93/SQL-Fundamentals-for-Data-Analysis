
-- Using SELF JOIN command: to get information FROM the same table
SELECT COLUMN_NAME
FROM TABLE A, TABLE B
WHERE CONDITION


-- Find all the clients who live in the same area
SELECT *
FROM CUSTOMERS;

SELECT A.ContactName, A.region, B.ContactName, B.Region
FROM CUSTOMERS A, CUSTOMERS B
WHERE A.Region = B.Region; 


-- find name and hire data from all the employees hired in the same year
SELECT *
FROM EMPLOYEES;  -- check the table information

SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM EMPLOYEES A, EMPLOYEES B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate);
-- you need to use the function DATEPART because you want the year only.


-- find what products have the same discount
SELECT *
FROM DBO.[Order Details];

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount; 


-- A SELF JOIN is used to join a table to itself, treating it as two distinct entities (e.g., T1 and T2) for internal comparison purposes. Consistent with the INNER JOIN logic, the use of Aliases is mandatory to differentiate columns from each virtual copy, instructing the database engine to compare every row of the original table against all rows of the copy. This iterative process, guided by the ON clause condition, is essential for identifying and grouping hierarchical or relational patterns within the data structure itself.



-- Using Subquery (SUBSELECT) - join information from two tables

-- Create a report with all the products above the average price
SELECT *
FROM Production.Product;

SELECT AVG (Listprice)
FROM Production.Product;  -- output: 438.6662

SELECT *
FROM Production.Product
WHERE ListPrice > 438.6662; 

-- OR, instead of doing two SELECTS, I can use SUBSELECT
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG (ListPrice) FROM Production.Product);


-- find all the employees with a job title 'Design Engineer'
SELECT *
FROM Person.Person  -- name, BusinessEntityID

SELECT *
FROM HumanResources.Employee;  -- job title, BusinessEntityID

SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer');

-- BusinessEntityID is the mutual column


-- find all the addresses in Alberta area
SELECT *
FROM PERSON.Address;  -- AddressLine1, stateprovinceID

SELECT * 
FROM Person.StateProvince; -- Name, StateProvinceID

SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince
WHERE Name = 'Alberta');
-- very similar to JOIN



-- Using DATEPART













