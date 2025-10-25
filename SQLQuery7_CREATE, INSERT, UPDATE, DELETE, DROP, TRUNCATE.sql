
-- Using CREATE command

-- NOT NULL: no null values
-- UNIQUE: all the values must be unique
-- PRIMARY KEY: it must be NOT NULL and UNIQUE
-- FOREIGN KEY: identifies an unique row from other table
-- CHECK: force a specific condition in a column
-- DEFAULT: passes on a standard value

CREATE TABLE Chanel (
ChanelID INT PRIMARY KEY,
Name VARCHAR (150) NOT NULL,
Subscriptions INT DEFAULT 0,
CreatedDate DATETIME NOT NULL
);

CREATE TABLE Video (
VideoID INT PRIMARY KEY,
Name VARCHAR(150) NOT NULL,
Visualizations INT DEFAULT 0,
Likes INT DEFAULT 0,
Dislikes INT DEFAULT 0,
Duration INT NOT NULL,
ChanelID INT FOREIGN KEY REFERENCES Chanel (ChanelID)
);



-- Using INSERT INTO command
CREATE TABLE Class (
ID INT PRIMARY KEY,
Name VARCHAR(150)
); 

INSERT INTO Class (ID, Name)  -- specify the columns
VALUES 
(1, 'Andressa'), -- insert the values in the same order as the columns
(2, 'Bruna'),
(3, 'Caroline'),
(4, 'Daniel'),
(5, 'Joao'),
(6, 'Thiago');


-- Copy the same data into a new table

SELECT * INTO Class2 FROM Class;



-- Using UPDATE command

UPDATE Class  -- table 
SET Name = 'Diego'  -- set which column and the new new value
WHERE ID = 4   -- MUST mention the WHERE condition, otherwise, all the rows will be renamed as 'Diego'

UPDATE Class
SET Name = 'Daniel'
WHERE ID = 4
UPDATE Class   -- you must include UPDATE sintax again 
SET Name = 'Dessa' 
WHERE ID = 1; 



-- Using DELETE command

DELETE FROM Class  -- table
WHERE Name = 'Joao'; -- WHERE condition, otherwise it deletes the entire table



-- Using ALTER TABLE command
-- Add, Remove or Alter a column,
-- Set values for columns,
-- Add or Remove constraints,
-- Rename tables

CREATE TABLE Instagram (
ID INT PRIMARY KEY,
Name VARCHAR(150) NOT NULL UNIQUE,
Category VARCHAR(200) NOT NULL,
CreatedDate DATETIME NOT NULL
)

ALTER TABLE Instagram  -- table name
ADD Active BIT;  -- ACTION (add a column), COLUMN NAME (Active), DATA TYPE (Bit = Boolean)

ALTER TABLE Instagram
ALTER COLUMN Category VARCHAR(300) NOT NULL
-- changes the varchar from 200 to 300

EXEC sp_RENAME 'Instagram.Name', 'ChanelName', 'COLUMN';
-- Rename a column (specific sintax for SMSS)
-- EXEC sp_RENAME command,
-- TableName.ColumnName
-- New columnName
-- Type: 'COLUMN'

EXEC sp_RENAME 'Instagram', 'SocialMedia', 'OBJECT';
-- Rename the table using 'OBJECT'



-- Using DROP TABLE command 

DROP TABLE TableName  -- sintax

DROP TABLE SocialMedia;  -- deleted the table

TRUNCATE TABLE Class;  -- it deletes all the information BUT NOT the table itself




















