SQL HOMEWORK 1

TASK 1 EASY

1) Definitions

Data: Raw facts, figures, or information that can be processed or stored, such as numbers, text, images, or measurements.

Database: An organized collection of data stored electronically and managed using a Database Management System (DBMS).

Relational Database: A type of database that organizes data into related tables using rows (records) and columns (fields), with relationships maintained through keys (primary/foreign keys).

Table: A structured collection of data in a relational database, organized into rows and columns. Each row is a record, and each column represents a field or attribute.

2)  Five Key Features of SQL Server

High Performance – Optimized query engine, indexing, and caching for fast data retrieval and manipulation.

Security – Provides encryption, authentication, role-based access control, and auditing.

Scalability & High Availability – Supports large-scale databases, clustering, replication, and Always On availability groups.

Integration Services – Includes tools like SQL Server Integration Services (SSIS), Reporting Services (SSRS), and Analysis Services (SSAS) for ETL, BI, and reporting.

Backup & Recovery – Built-in mechanisms for automated backups, point-in-time recovery, and disaster recovery options.

3)Authentication Modes in SQL Server

When connecting to SQL Server, two main authentication modes are available:

Windows Authentication Mode – Uses Windows user accounts (Active Directory or local) for secure login; credentials are managed by Windows.

SQL Server Authentication Mode – Uses SQL Server-specific logins and passwords stored in SQL Server.

TASK 2 Medium
 
4) create database ScoolDB 

5)create table Students (Id int primary key, Name varchar(50), Age(int))

6)SQL is the language we use to communicate with databases. You can think of it as a set of instructions. For example, when you want to ask the database for all employees in the IT department, you use SQL to “speak” to it. Without SQL, you wouldn’t have a way to tell the database what information you want.

SQL Server is the actual database management system created by Microsoft. It’s the place where all the data is stored, organized, and secured. It’s like the “engine” that runs in the background, making sure your data is safe, fast to access, and always available when applications or users request it.

SSMS (SQL Server Management Studio) is a tool with a graphical interface that lets you connect to SQL Server and use SQL in a more comfortable way. Instead of writing commands in a plain console, SSMS gives you windows, panels, and features that help you manage databases, run queries, back up data, and monitor performance.

TASK 3 Hard

7) 
1.DQL – Data Query Language
This category is used to ask questions to the database and retrieve information. It’s all about reading the data, not changing it. For example, you use it when you want to see a list of employees or find customers from a certain city.
exemple:

select* from SchoolDB

2. DML – Data Manipulation Language
This is about working with the actual data inside tables. With DML, you can add new records, change existing ones, or remove data you no longer need. In short, DML lets you insert, update, and delete the data stored in the database.
example: 

insert into Emploees

3. DDL – Data Definition Language
This one is used to define and manage the structure of the database itself. It’s not about the data inside, but about the “skeleton” of the database. For example, you create a new table, change the design of a table by adding a new column, or completely remove a table.
example:

create table employees

4. DCL – Data Control Language
This deals with permissions and security. With DCL, the database administrator can decide who is allowed to see or change certain data. For example, one user may only view data, while another may also insert and update it. It’s about controlling access.
example:

grant select,insert on employees to workers

5. TCL – Transaction Control Language
This focuses on transactions, which are groups of operations that should either all happen together or not at all. With TCL, you can save changes permanently, undo mistakes, or set checkpoints in the middle of a process. This ensures data integrity, so nothing is left half-done.
example:

update employees

8)
insert into students values
(1, 'JOHN', 20)
(2, 'SARA', 19)
(3, 'SAM', 21)

9)
First, go to the official Microsoft website and find the file AdventureWorksDW2022.bak.
Second, download this file to your computer and go to the Downloads folder.
After the download, copy the file and go to the Program Files folder.
Then, go to Microsoft SQL Server and find the folder named MSSQL16.MSSQLSERVER. Inside it, open the MSSQL folder, then the Backup folder, and paste the copied file there.
Now the AdventureWorksDW2022.bak file is ready to use, and it will appear in the SQL application under the Databases section.
