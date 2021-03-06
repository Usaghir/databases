

-- 1. create a database **world**

DROP DATABASE IF EXISTS world;
CREATE DATABASE world;
USE world;



-- 2. create a table country
DROP TABLE IF EXISTS country;

CREATE TABLE
IF NOT EXISTS country
(
  ID CHAR
(3) NOT NULL DEFAULT '',
  TheName CHAR
(52) NOT NULL DEFAULT '',
  Population INT
(11) NOT NULL DEFAULT '0',
  SurfaceArea FLOAT
(10,2) NOT NULL DEFAULT '0.00',
  Continent enum
('Asia','Europe', 'North America','South America','Africa','Australia','Antarctica') NOT NULL DEFAULT 'Europe',
  PRIMARY KEY
(ID)
);

-- 4. Insert 10-20 rows in each table with relevant fields. 

INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 1, 'China', 1418966824, 9706961, 'Asia');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 2, 'India', 1365521538, 3287590, 'Asia');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 3, 'USA', 328586390, 9372610, 'North America');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 4, 'Indonesia', 268933842, 1904569, 'Asia');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 5, 'Brazil', 212058797, 8515767, 'South America');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 6, 'Pakistan', 203765739, 881912, 'Asia');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 7, 'Nigeria', 199845937, 923768, 'Africa');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 8, 'Bangladesh', 167691040, 147570 , 'Asia');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 9, 'Russia', 143909539, 17098242, 'Asia');
INSERT INTO country
  (ID, TheName, Population, SurfaceArea, Continent)
VALUES
  ( 10, 'Mexico', 131984835, 1964375, 'South America');


-- 3. create a table city 
DROP TABLE IF EXISTS city;

CREATE TABLE
IF NOT EXISTS city
(
  CityID char
(3) NOT NULL  DEFAULT '',
  TheName CHAR
(35) NOT NULL DEFAULT '',
  CountryCode CHAR
(3) NOT NULL DEFAULT '',
  Population INT
(11) NOT NULL DEFAULT '0',
  PRIMARY KEY
(CityID),
  FOREIGN KEY
(CountryCode) REFERENCES world.country
(ID)
);

-- 4. Insert 10-20 rows in each table with relevant fields. 

INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (1, 'Shanghai', 1, 24153000);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (2, 'Beijing', 1, 18590000);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (3, 'Karachi', 6, 18000000);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (4, Lagos, 7, 13903620);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (5, 'Dhaka', 8, 14543000);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (6, 'Mexico City', 10, 21671908);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (7, 'Moscow', 9, 13197596);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (8, 'Manila', 9, 12877000);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (9, 'Tianjin', 1, 12784000);
INSERT INTO city
  (CityID, TheName,CountryCode,Population)
VALUES
  (10, 'Mumbai', 2, 12400000);

