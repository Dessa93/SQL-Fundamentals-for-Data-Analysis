
-- Check Constraint (create restristions)

CREATE TABLE DrivingLicense(
ID INT NOT NULL,
Name VARCHAR(200) NOT NULL,
AGE INT CHECK (AGE >= 18)
); 
-- CHECK means create a restriction, Constraint



-- Not Null Constraint - value cannot be null
CREATE TABLE DrivingLicense(
ID INT NOT NULL,   -- must have this information
Name VARCHAR(200) NOT NULL,  -- must have this information
AGE INT CHECK (AGE >= 18)
); 



-- Unique Constraint: it DOES NOT allow you to insert same values for that column
-- Similar to Primary Key, but PK can be used only once, but UNIQUE can be used for all columns
-- It guarantees that you don't repete the values (numbers or strings)

CREATE TABLE DrivingLicense(
ID INT NOT NULL,  
Name VARCHAR(200) NOT NULL,  
AGE INT CHECK (AGE >= 18),
CodeDL INT NOT NULL UNIQUE  -- unique value, you cannot repeat it for another person
); 




-- Create Views: when you need a few columns only, not the entire table

CREATE VIEW [People] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Mr.';

SELECT * FROM People

