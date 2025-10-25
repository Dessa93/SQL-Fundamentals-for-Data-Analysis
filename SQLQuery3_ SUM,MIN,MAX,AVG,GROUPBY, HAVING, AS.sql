
-- Using MIN, MAX, SUM, AVG (Aggregation Functions)

SELECT TOP 10 SUM(linetotal)
FROM Sales.SalesOrderDetail;  -- returns the total cost of the first 10 products

SELECT SUM(linetotal) AS "Soma"  -- AS gives a name for the column
FROM Sales.SalesOrderDetail;  

SELECT  MIN (linetotal)
FROM Sales.SalesOrderDetail; -- the minimum value in that column (linetotal)

SELECT MAX (linetotal)
FROM Sales.SalesOrderDetail;  -- the maximum value in that column (linetotal)

SELECT MAX (linetotal)
FROM Sales.SalesOrderDetail;  -- the average total price in that column


-- Using GROUP BY 
-- usually, it is GROUP BY the first column you SELECTED

SELECT column1, funcaoAgregacao (column2) -- select what you want to do from one column to another
FROM tablename -- from which table
GROUP BY column1; 

SELECT SpecialOfferID, SUM (UnitPrice) 
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID;
-- takes all the ID numbers from products in sales and sum them according to ID number


-- how many of each product was sold until today
SELECT ProductID, COUNT (ProductID)
FROM Sales.SalesOrderDetail
GROUP BY ProductID;
-- it grouped by ID number - how many products I have from each product (example: how many of 707 ID number)

-- how many of each name there are in my data
SELECT Firstname, COUNT (Firstname) AS "Nome" 
FROM Person.person
GROUP BY Firstname; 

-- average price of the silver products
SELECT color, AVG (ListPrice) AS "AVERAGE PRICE"
FROM Production.product
WHERE color = 'silver'
GROUP BY color; 

-- how many people have the same middle name (grouped by middle name)
SELECT MiddleName, COUNT (MiddleName)
FROM Person.Person
GROUP BY MiddleName;

-- average of how many products are sold in the store
SELECT ProductID, AVG (OrderQty) AS "AVERAGE SOLD"
FROM Sales.SalesOrderDetail
GROUP BY ProductID; 

-- Top 10 sales with higher price per product in order by more expensive to cheaper
SELECT TOP 10 ProductID, SUM (linetotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM (linetotal) DESC; 

-- how many products and what is the average quantity in work order grouped by product ID
SELECT ProductID, AVG (OrderQty) AS "AVERAGE QUANTITY"
FROM Production.WorkOrder
GROUP BY ProductID;



-- Using HAVING command - used with GROUP BY to FILTER the results
-- The same as WHERE, but for grouped data.
-- HAVING is applied after grouping the data and WHERE before grouping the data

-- find the quantity of each name that occurs more than 10 times
SELECT FirstName, COUNT(FirstName) AS "Quantity"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT (FirstName) > 10;

-- how many products in total sold are between 162k to 500k
SELECT ProductID, SUM (LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM (LineTotal) BETWEEN 162000 AND 500000;

-- what names occurs more than 10 times, but it has Mr. as title
SELECT FirstName, COUNT (FirstName) AS "QUANTITY"
FROM Person.Person
WHERE title = 'Mr.'
GROUP BY FirstName
HAVING COUNT (FirstName) > 10;

-- identify provinces with the largest registration on the system - higher than 1000 times
SELECT StateProvinceID, COUNT (StateProvinceID) AS "QUANTITY"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT (StateProvinceID) > 1000; 

-- what products are not having the average of 1 million in price total sales
SELECT ProductID, AVG (LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG (LineTotal) < 1000000;


-- Using AS command - label columns (existing ones or created ones)

SELECT TOP 10 AVG (ListPrice) AS "AVERAGE PRICE"
FROM Production.Product; 

SELECT FirstName AS "Primeiro Nome"  -- it changes the column name to Portuguese
FROM Person.Person;

SELECT LastName AS "Ultimo Nome"
FROM Person.Person;

SELECT ProductNumber AS "Numero do Produto"
FROM Production.Product;

SELECT UnitPrice AS "Preço Unitario"
FROM Sales.SalesOrderDetail;




