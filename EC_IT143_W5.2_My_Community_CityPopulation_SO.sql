/*****************************************************************************************************************
NAME:    EC_IT143_W5.2_My_Community_CityPopulation_SO.sql
PURPOSE: Answer four analysis questions for the City Population Community data set.

MODIFICATION LOG:
Ver      Date        Author                  Description
-----   ----------   ----------------------  --------------------------------------------------------------
1.0     04/01/2026   Sobowale Olumuyiwa     Built script for EC IT143 Week 5.2 assignment.

RUNTIME:
Xm Xs

NOTES:
This script demonstrates SQL analysis using counting, sorting, and aggregate functions
to answer questions about the City Population Community data set. Queries were tested in SSMS.
******************************************************************************************************************/

USE EC_IT143_DA;
GO

-- Q1: How many cities are in the City Population Community?
-- Author: Sobowale Olumuyiwa
-- A1: Counts the total number of cities in the table.

SELECT COUNT(*) AS total_cities
FROM dbo.Community2;
GO

-- Q2: What are the cities and their populations?
-- Author: Sobowale Olumuyiwa
-- A2: Displays all cities and their populations.

SELECT
    city,
    population
FROM dbo.Community2;
GO

-- Q3: What is the average population of cities in the City Population Community?
-- Author: A. Conteh
-- A3: Calculates the average population across all cities.

SELECT AVG(CAST(population AS DECIMAL(12,2))) AS average_population
FROM dbo.Community2;
GO

-- Q4: Which city has the highest population?
-- Author: A. Conteh
-- A4: Identifies the city with the highest population.

SELECT TOP 1
    id,
    city,
    population
FROM dbo.Community2
ORDER BY population DESC;
GO
