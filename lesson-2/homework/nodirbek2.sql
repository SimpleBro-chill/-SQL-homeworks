SQL HOMEWORK 2
 
 TASK-1 Basic-Level Tasks

1) CREATE TABLE EMPLOYEES( EmployeeID INT PRIMARY KEY, Name VARCHAR(50), SALARY DECIMAL(10, 2),department varchar(50))

2) INSERT INTO Employees (EmployeeID, Name, Salary, department)
VALUES
(1, 'Ali ', 2500.50, 'finance'),
(2, 'Nodirbek', 3200.75, 'hr'),
(3, 'Dilshod', 4100.00, 'it'),
(4, 'Malika', 3800.25, 'marketing'),
(5, 'Azizbek', 2950.10, 'manager')

3)UPDATE EMPLOYEES
SET SALARY = 7000.00
WHERE EmployeeID = 1

4)DELETE FROM EMPLOYEES
WHERE EmployeeID = 2
 

5) DELETE – Removes specific rows from a table using a WHERE clause. The table structure remains, and you can roll back (undo) the action if inside a transaction.

TRUNCATE – Removes all rows from a table quickly, but keeps the table structure. You can’t use WHERE and usually can’t roll back.

DROP – Completely deletes the entire table (structure + data) from the database. After this, the table no longer exists.

6) ALTER TABLE EMPLOYEES
ALTER COLUMN NAME VARCHAR(100)

7)  ALTER TABLE EMPLOYEES
ADD DEPARTMENT VARCHAR(50)

8)  ALTER TABLE EMPLOYEES
ALTER COLUMN SALARY FLOAT

9)CREATE TABLE DEPARTMENTS ( DepartmentID int primary key ,  employeename varchar(100),salary decimal(10, 2), departmentname varchar(50))


10) truncate table EMPLOYEES


 TASK-2 Intermediate-Level Tasks

 1)INSERT INTO DEPARTMENTS (DepartmentID, employeename, salary, departmentname)
SELECT 1, 'Alice Johnson', 4500.00, 'HR' UNION ALL
SELECT 2, 'Bob Smith', 5200.00, 'Management' UNION ALL
SELECT 3, 'Charlie Brown', 6100.00, 'IT' UNION ALL
SELECT 4, 'Diana Miller', 4800.00, 'Marketing' UNION ALL
SELECT 5, 'Edward Wilson', 7300.00, 'Operations';

 
 2)UPDATE DEPARTMENTS
SET departmentname  = 'Management'
WHERE Salary > 5000

3)TRUNCATE TABLE  DEPARTMENTS

4)ALTER TABLE DEPARTMENTS
DROP COLUMN DepartmentID;

5)EXEC sp_rename 'Employees', 'StaffMembers';

6)DROP TABLE Departments;

TASK-3 Advanced-Level Tasks

1) CREATE TABLE Products (ProductID INT PRIMARY KEY, ProductName VARCHAR(100), Category VARCHAR(50), Price DECIMAL(10, 2) CHECK (Price > 0), Description VARCHAR(200))

2)ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

3)EXEC sp_rename 'Products.Category', 'ProductCategory', 'COLUMN';

4)INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, Description)
VALUES
(1, 'Laptop', 'Electronics', 950.00, 'High-performance laptop'),
(2, 'Desk Chair', 'Furniture', 120.00, 'Ergonomic office chair'),
(3, 'Headphones', 'Electronics', 80.50, 'Noise-cancelling headphones'),
(4, 'Water Bottle', 'Accessories', 15.00, 'Stainless steel bottle'),
(5, 'Backpack', 'Travel', 45.99, 'Waterproof travel backpack');

5)SELECT * INTO Products_Backup
FROM Products;


6)EXEC sp_rename 'Products', 'Invenotory'

7)ALTER TABLE Inventory
ALTER COLUMN Price  FLOAT

8)ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000,5);
