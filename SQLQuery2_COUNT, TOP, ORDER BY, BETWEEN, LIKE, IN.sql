

-- Using COUNT command

SELECT COUNT (*)
FROM person.person; -- returns 19972 lines

SELECT COUNT (Title)  -- returns 1009 - there's 1009 titles
FROM person.person;

SELECT COUNT (DISTINCT Title)  -- returns 6 - there's only 6 different titles
FROM person.person;

SELECT COUNT (*)
FROM production.product; -- returns how many products on product table

SELECT COUNT (Size)
FROM production.product;  -- returns how many product sizes on product table (211)

SELECT COUNT (DISTINCT Size)
FROM production.product;  -- returns how many different product sizes (18)


-- Using TOP command - same concept as LIMIT

SELECT TOP 10 *
FROM production.product;  -- returns the first 10 rows

SELECT TOP 10 *
FROM person.person;


-- Using ORDER BY command

SELECT *
FROM person.person
ORDER BY FirstName ASC;  -- returns all the names in alfabetical order

SELECT *
FROM person.person
ORDER BY FirstName DESC; -- returns all the name in descrecent order

SELECT FirstName, LastName  -- select always indicates which COLUMNS I want to select
FROM person.person
ORDER BY FirstName ASC, LastName DESC; -- returns first names in alfabetical order and surnames in DESC order

SELECT TOP 10 *
FROM production.product
ORDER BY ListPrice DESC;  -- returns the 10 most expensive products 

SELECT  TOP 4 Name, ProductNumber
FROM production.product
ORDER BY ProductID ASC;  -- returns the top 4 products according to its ID number


-- Using BETWEEN command

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500;  -- returns all the products priced between 1000 to 1500

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500; -- the opposite, any price apart from 1000 to 1500

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate; -- all employees hired between these dates
-- SMSS date standard is this one above



-- Using IN command - always use with WHERE

SELECT *
FROM person.Person
WHERE BusinessEntityID	IN (2,7,13); -- all the employees with BusID equals 2,7 and 13

-- it is the same as doing this query, but quicker, cleaner (and more professional)
SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13;

SELECT *
FROM person.Person
WHERE BusinessEntityID	NOT IN (2,7,13); -- the opposite



-- Using LIKE command

SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'; -- any combination which contains 'ovi' in the BEGGINING

SELECT *
FROM Person.Person
WHERE LastName LIKE '%to'; -- any last name ENDING in 'to'

-- the % symbol changes its position. You use % to substitute the part you DO NOT REMEMBER

SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%';  -- when you don't remember if it is before or after, use TWO %%


-- Challenges

SELECT COUNT (*)
FROM Production.product
WHERE ListPrice > 1500;  -- how many products cost more than 1500

SELECT DISTINCT COUNT (*)
FROM person.Person
WHERE LastName LIKE 'P%';  -- how many people starting the name with P

SELECT COUNT (DISTINCT city)
FROM person.Address;  -- how many unique cities the clients are from

SELECT DISTINCT (city)
FROM Person.Address;  -- what are the cities the clients are from

SELECT COUNT (*)
FROM Production.Product
WHERE color = 'red' 
AND ListPrice BETWEEN 500 AND 1000;  -- how many products are red and cost between 500 to 1000

SELECT COUNT (*)
FROM Production.Product
WHERE Name LIKE '%road%';  -- how many products have 'road' in their names






