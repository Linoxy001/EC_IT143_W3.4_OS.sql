/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_My_Community_Student_SO.sql
PURPOSE: Answer four analysis questions for the Student Community data set.

MODIFICATION LOG:
Ver      Date        Author                  Description
-----   ----------   ----------------------  --------------------------------------------------------------
1.0     04/01/2026   Sobowale Olumuyiwa     Built script for EC IT143 Week 5.2 assignment.

RUNTIME:
Xm Xs

NOTES:
This script demonstrates SQL analysis using counting, sorting, and aggregate functions
to answer questions about the Student Community data set. Queries were tested in SSMS.
******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Q1: How many students are in the Student Community?
-- Author: Sobowale Olumuyiwa
-- A1: Counts the total number of students in the table.

SELECT COUNT(*) AS total_students
FROM dbo.Community1;
GO

-- Q2: What are the names and ages of all students?
-- Author: A. Conteh
-- A2: Displays all student names and ages in the table.

SELECT
    name,
    age
FROM dbo.Community1;
GO

-- Q3: What is the average age of students in the Student Community?
-- Author: Sobowale Olumuyiwa
-- A3: Calculates the average age of all students.

SELECT AVG(CAST(age AS DECIMAL(10,2))) AS average_age
FROM dbo.Community1;
GO

-- Q4: Who is the oldest student in the Student Community?
-- Author: A. Conteh
-- A4: Identifies the oldest student by sorting age from highest to lowest.

SELECT TOP 1
    id,
    name,
    age
FROM dbo.Community1
ORDER BY age DESC;
GO
