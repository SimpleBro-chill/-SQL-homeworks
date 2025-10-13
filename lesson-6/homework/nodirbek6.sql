SQL HOMEWORK-6

PUZZLE-1

CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');

1)SELECT 
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
FROM InputTbl
GROUP BY 
    CASE WHEN col1 < col2 THEN col1 ELSE col2 END,
    CASE WHEN col1 < col2 THEN col2 ELSE col1 END;

2)SELECT 
    IIF(col1 < col2, col1, col2) AS col1,
    IIF(col1 < col2, col2, col1) AS col2
FROM InputTbl
GROUP BY 
    IIF(col1 < col2, col1, col2),
    IIF(col1 < col2, col2, col1);


PUZZLE-2

CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0); 

SELECT *
FROM TestMultipleZero
WHERE 
    NOT (ISNULL(A, 0) = 0 
     AND ISNULL(B, 0) = 0 
     AND ISNULL(C, 0) = 0 
     AND ISNULL(D, 0) = 0);

PUZZLE-3

create table section1(id int, name varchar(20))
insert into section1 values (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')  Find those with odd ids

SELECT *FROM section1
WHERE id % 2 = 1;

PUZZLE-4

SELECT TOP 1 *  
FROM section1  
ORDER BY id ASC;

SELECT TOP 1 *  
FROM section1  
ORDER BY id ASC;

PUZZLE-5

SELECT TOP 1 *  
FROM section1  
ORDER BY id DESC;

PUZZLE-6
SELECT* FROM section1
WHERE NAME LIKE 'B%'

PUZZLE-7

CREATE TABLE ProductCodes ( Code VARCHAR(20) )

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

SELECT *,
CASE 
    WHEN Code LIKE '%\_%' ESCAPE '\' THEN 'true'
    ELSE 'false'
END AS orders
FROM ProductCodes;
