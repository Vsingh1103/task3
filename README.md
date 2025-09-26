# task3
Objective:-
Practice extracting data from one or more tables using SELECT queries with filters and sorting.

Tools:-
-DB Browser for SQLite
-MySQL Workbench
I used sqlite

Deliverables:-SQL script containing queries with:
-SELECT * and specific columns
-Filtering with WHERE, AND, OR, BETWEEN
-Sorting with ORDER BY


SELECT Name, Price
FROM Product
ORDER BY Price DESC
LIMIT 3;

SELECT Name, Price 
FROM Product
WHERE Price > 20000;

SELECT Name, Price
FROM Product
WHERE Price BETWEEN 5000 AND 20000;
