
-- Import the database **new_world** (using the new_world.sql-file), 

source new_world.sql;
use new_world;

-- 1. What are the names of countries with population greater than 8 million
SELECT Name, Population FROM country WHERE Population > 8000000;

-- 2. What are the names of countries that have “land” in their names ?
SELECT Name FROM country WHERE Name LIKE "%land%";

-- 3. What are the names of the cities with population in between 500,000 and 1 million ?
SELECT Name, Population FROM city WHERE ((Population > 500000) and (Population < 1000000));

-- 4. What's the name of all the countries on the continent ‘Europe’ ?
SELECT Name FROM country WHERE continent = 'Europe';


-- 5. List all the countries in the descending order of their surface areas.
SELECT Name FROM country ORDER BY SurfaceArea DESC;



-- bonus queries

-- 6. What are the names of all the cities in the Netherlands?
SELECT city.Name FROM country JOIN city ON city.CountryCode = country.Code WHERE country.Name LIKE "Netherlands";

-- 7. What is the population of Rotterdam ?
SELECT population FROM CITY WHERE Name = "Rotterdam";

-- 8. What's the top 10 countries by Surface Area ?
SELECT Name FROM country ORDER BY surfaceArea DESC LIMIT 10;

-- 9. What's the top 10 most populated cities?
SELECT Name FROM city ORDER BY population DESC LIMIT 10;

-- 10. What is the population of the world ?
SELECT SUM(Population) FROM country;


 






