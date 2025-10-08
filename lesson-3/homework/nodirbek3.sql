SQL HOMEWORK-3

TASK-1 Easy-Level Tasks

1) BULK INSERT is a command in SQL Server used to quickly import large amounts of data from an external file (such as a CSV or text file) into a database table. It improves performance by minimizing logging and overhead compared to multiple individual INSERT statements.

2)List four file formats that can be imported into SQL Server:

CSV (Comma-Separated Values)

TXT (Text files)

XML (Extensible Markup Language)

JSON (JavaScript Object Notation)

3)CREATE TABLE Products ( ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Price DECIMAL(10,2))

4)INSERT INTO Products  VALUES 
(1, 'Laptop', 8500.00),
(2, 'Mouse', 2500.50),
(3, 'Keyboard', 4550.00)

5) NULL: Allows a column to have no value or an unknown value.

NOT NULL: Requires that a column must always have a value; it cannot be left empty.

6)ALTER TABLE Products
ADD CONSTRAINT UQ_ProductName UNIQUE (ProductName)

7)-- Purpose: To show all products stored in the Products table
SELECT * FROM Products
Also it helps us to show our team what we have done up to this point 

8) ALTER TABLE Products
ADD CategoryID INT
select * from PRODUCTS

9)CREATE TABLE Categories (CategoryID INT PRIMARY KEY, CategoryName VARCHAR(100) UNIQUE, price decimal(10, 2))

10)The IDENTITY column in SQL Server automatically generates unique sequential numbers for each new record inserted into a table. It is commonly used for primary keys to ensure each row has a unique identifier without manually specifying a value.

TASK-2 Medium-Level Tasks

11)BULK INSERT PRODUCTS
from 'C:\Users\User\Desktop\Shoplist.txt'
with
(
firstrow = 2,
fieldterminator = ',',
rowterminator = '\n'
)

12)ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
select * from products

13)PRIMARY KEY:
A PRIMARY KEY uniquely identifies each record in a table. It does not allow duplicate or NULL values, and each table can have only one PRIMARY KEY.

UNIQUE KEY:
A UNIQUE KEY ensures that all values in a column are different. It allows one NULL value and a table can have multiple UNIQUE KEYS.

14)ALTER TABLE Products
ADD CONSTRAINT CHK_Price CHECK (Price > 0)

15)ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT

16)SELECT CategoryID, CategoryName, ISNULL(Price, 0) AS Price
FROM Categories

17)A FOREIGN KEY constraint in SQL Server is used to create a link between two tables and maintain referential integrity of the data.

The purpose of a FOREIGN KEY is to ensure that the value in one table (the child table) corresponds to an existing value in another table (the parent table). This prevents invalid data and keeps relationships consistent.

TASK-3 Hard-Level Tasks 

18)CREATE TABLE Customers (CustomerID INT PRIMARY KEY, CustomerName VARCHAR(100), Age INT,)
    CONSTRAINT AGECHEKER CHECK (Age >= 18)

19)CREATE TABLE Orders (OrderID INT IDENTITY(100, 10) PRIMARY KEY, OrderName VARCHAR(100))

20)CREATE TABLE ORDERDETAILS( PersonID int  not null primary key, Ordercode int not null, OrderID int foreign key references Orders(OrderID))

21)Use ISNULL when you only need to replace one NULL value.

Use COALESCE when you want to check multiple possible values and return the first that isn’t NULL.

22)CREATE TABLE Employees (EmpID INT PRIMARY KEY, EmpName VARCHAR(100), Email VARCHAR(100) UNIQUE)

23)CREATE TABLE Salaries (SalaryID INT PRIMARY KEY, EmpID INT, Amount DECIMAL(10,2),
    CONSTRAINT FK_Salaries_Employees FOREIGN KEY (EmpID)
        REFERENCES Employees(EmpID)
        ON DELETE CASCADE
        ON UPDATE CASCADE)
