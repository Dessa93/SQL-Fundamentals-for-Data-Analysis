
-- Using SELECT command

SELECT *
FROM person.Person;   -- select everyone from the table person.Person

SELECT Title
FROM person.Person;   -- it returns only the entries on Title column

SELECT *
FROM person.EmailAddress; -- select everyone from the table person.EmailAddress

SELECT FirstName, LastName
FROM person.Person;   -- select first and last name from all customers


-- Using DISTINCT command

SELECT FirstName
FROM person.person; -- returned 19.971 lines

SELECT DISTINCT	FirstName
FROM person.person;  -- returned 1.018 lines (no duplicates)

SELECT DISTINCT LastName
FROM person.person;  -- returned 1.206 lines (no duplicate surnames, unique values)


-- Using WHERE command - conditions

SELECT *
FROM person.person   -- which table
WHERE LastName = 'Miller';  -- which condition

SELECT * 
FROM person.person
WHERE LastName = 'Miller' AND FirstName = 'Anna';

SELECT *
FROM production.product
WHERE color = 'blue' or color = 'black'; -- it returns only blue and black products
-- if you use blue and black, it would return just the products with both colors

SELECT *
FROM production.product
WHERE ListPrice > 1500 AND ListPrice < 5000;  -- it returns values between 1500 to 5000

SELECT *
FROM production.product
WHERE color <> 'red';  -- <> means different, all colors appart from red

SELECT *
FROM production.product
WHERE Weight > 500 AND Weight <= 700;  -- all the products weighting between 500 to 700kg

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 's' AND SalariedFlag = 'true';  -- all the single salaried employees

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' AND SalariedFlag = 'true';  -- all the married salaried employees

-- find one user's email
SELECT *
FROM person.person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'; -- you first need to find bisiness entity ID

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = 26;  -- you'll find the email address

















