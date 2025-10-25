
-- Using INNER JOIN - joining tables!!

-- INFO ON THE TABLE: BusinessEntityID, FirstName, LastName, EmailAddress:
SELECT TOP 10 *
FROM Person.Person;  -- to check what information this table contains (businessID, FirstName & LastName)

SELECT TOP 10*
FROM Person.EmailAddress;  --check info from this table (businessID, EmailAddress)

-- the new table is created considering the mutual column (BusinessEntityID)
SELECT p.BusinessEntityID, p.FirstName, p.LastName, pe.EmailAddress  -- info from the tables
FROM Person.Person AS P  -- first table
INNER JOIN Person.EmailAddress AS PE  -- second table
ON p.BusinessEntityID = pe.BusinessEntityID;  -- mutual column




-- INFO ON THE TABLE: List Price, Product Name and Product Subcategory
SELECT TOP 10*
FROM Production.Product;  -- Name, List Price, Product Subcategory ID

SELECT TOP 10*
FROM Production.ProductSubcategory -- Name and Product Subcategory ID

-- the new table is created considering the mutual column (Subcategory ID)
SELECT pr.Name, pr.ListPrice,pr.ProductSubcategoryID, pc.ProductSubcategoryID
FROM Production.Product AS PR
INNER JOIN Production.ProductSubcategory pc
ON pr.ProductSubcategoryID = pc.ProductSubcategoryID;




-- INFO ON THE TABLE: BusinessEntityID, AddressID, AddressLine1, PostalCode
SELECT TOP 10*
FROM Person.BusinessEntityAddress;  -- BusinessEntityID, AddressID

SELECT TOP 10*
FROM Person.Address;  -- AddressID, AddressLine1, PostalCode

-- the new table is created considering the mutual column (AddressID)
SELECT pa.AddressID, pa.AddressLine1, pa.PostalCode, pb.BusinessEntityID  -- info from the tables
FROM Person.Address AS PA -- first 'apelido' to inform which table
INNER JOIN Person.BusinessEntityAddress AS PB
ON pa.AddressID = pb.AddressID; 




-- INFO ON THE TABLE: BusinessEntityID, Name, PhoneNumberTypeID, PhoneNumber
SELECT TOP 10*
FROM Person.PhoneNumberType;  -- Name, PhoneNumberTypeID

SELECT TOP 10*
FROM Person.PersonPhone;  -- BusinessEntityID, PhoneNumber, PhoneNumberTypeID

-- mutual column (PhoneNumberTypeID)
SELECT pa.BusinessEntityID, pa.PhoneNumber, pa.PhoneNumberTypeID, pb.Name
FROM Person.PersonPhone AS PA
INNER JOIN Person.PhoneNumberType AS PB 
ON pa.PhoneNumberTypeID = pb.PhoneNumberTypeID;



-- INFO ON THE TABLE: AddressID, City, StateProvinceId, Name
SELECT TOP 10*
FROM Person.StateProvince;  -- StateProvinceID, Name

SELECT TOP 10*
FROM Person.Address;  -- AddressID, City, StateProvinceID

-- mutual column (StateProvinceID)
SELECT pa.AddressID, pa.City, pa.StateProvinceID, ps.Name
FROM Person.Address AS PA
INNER JOIN Person.StateProvince AS PS
ON pa.StateProvinceID = ps.StateProvinceID;




-- IF YOU WANT TO JOIN ALL THE INFORMATION FROM BOTH TABLES
SELECT TOP 10*
FROM Person.BusinessEntityAddress AS BA
INNER JOIN person.address PA ON PA.AddressID = BA.AddressID;

-- INNER JOIN using the mutual column, but as you didn't specify which columns, it will join all of them 




-- Types of JOINS
-- INNER JOIN – Returns only the rows that have matching values in both tables (the intersection)
-- FULL OUTER JOIN – Returns all matching rows from both tables. When there is no match, it returns NULL for the columns of the non-matching table
-- LEFT OUTER JOIN – Returns all rows from the left table (Table A), and the matching rows from the right table (Table B). If there is no match in Table B, it returns NULL for the columns from Table B
-- RIGHT OUTER JOIN – The opposite of LEFT JOIN. It returns all rows from the right table (Table B), and the matching rows from the left table (Table A). The right table is considered the main table, and the left is complementary


-- LEFTER OUTER JOIN
-- Find out how many people have a credit card registered on the system

SELECT *
FROM Person.Person AS PP
INNER JOIN Sales.PersonCreditCard AS PC
ON PP.BusinessEntityID = PC.BusinessEntityID;
-- INNER JOIN: 19118 rows

SELECT *
FROM Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard AS PC
ON PP.BusinessEntityID = PC.BusinessEntityID;
-- LEFT JOIN: 19972 rows

-- You can lose information using INNER JOIN because it considers the intersection only

-- Find out how many people DO NOT have a credit card registered
SELECT *
FROM Person.Person AS PP
LEFT JOIN Sales.PersonCreditCard AS PC
ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL;

