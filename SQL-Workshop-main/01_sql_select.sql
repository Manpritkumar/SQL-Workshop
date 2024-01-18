# SQL select query exercise
#
# World database layout:
# To use this database from a default MySQL install, type: use world;
#
# Table: City
# Columns: Id,Name,CountryCode,District,Population
#
# Table: Country
# Columns: Code, Name, Continent, Region, SurfaceArea, IndepYear, Population, LifeExpectancy, GNP, Capital
#
# Table: CountryLanguage
# Columns: CountryCode, Language, IsOfficial,Percentage
#
#
# 1: Get a query to return "Hello World", 123
# (Hint: 1 row, 2 columns)
SELECT "hello world" as message , 123 as id;
#
# 2: Get everything from the city table
# (Hint: Many many rows)
USE WORLD;
SELECT * FROM CITY;
#
# 3: Get everything on the cities whose district is "aceh"
# (Hint: 2 rows)
SELECT * FROM CITY WHERE DISTRICT = "aceh";
#
# 4: Get only the name of the cities where the countrycode is "bfa"
 SELECT Name FROM City WHERE CountryCode="bfa";
#
# 5: Get both the name and district of the cities where the countrycode is "tto"
SELECT Name,district FROM City WHERE CountryCode="tto";
#
# 6: Get the name and district named as nm,dist from the cities where the countrycode is "arm"
SELECT Name as nm,district as dist FROM City WHERE CountryCode="arm";
#
# 7: Get the cities with a name that starts with "bor"
SELECT Name FROM City WHERE name Like "bor%";
#
# 8: Get the cities with a name that contains the string "orto"
SELECT Name FROM City WHERE name Like "%orto%";
#
# 9: Get the cities that has a population below 1000
SELECT Name,Population FROM City WHERE Population < 1000 ;
#
# 10: Get the unique countrycodes from the cities that has a population below 1000
SELECT DISTINCT Name, CountryCode,Population FROM City WHERE Population < 1000 ;
#
# 11: Get the cities with the countrycode UKR that has more than 1000000 (one million) in population
SELECT  Name, CountryCode,Population FROM City WHERE CountryCode="UKR" and Population > 1000000 ;
#
# 12: Get the cities with a population of below 200 or above 9500000 (9.5 million)
SELECT  Name, Population FROM City WHERE Population < 200 or Population > 9500000 ; 
#
# 13: Get the cities with the countrycodes TJK, MRT, AND, PNG, SJM
SELECT  Name,CountryCode FROM City WHERE CountryCode in("TJK", "MRT","PNG", "SJM"); 
#
# 14: Get the cities with a population between 200 and 700 inclusive
SELECT  count(*) as countCities, CountryCode from City group by CountryCode having countCities>200 ;
#
# 15: Get the countries with a population between 8000 and 20000 inclusive
SELECT  Name, Population FROM Country WHERE Population BETWEEN  8000 AND 20000 ;
#
# 16: Get the name of the countries with a independence year (indepyear) before year 0
SELECT  Name,IndepYear FROM Country WHERE IndepYear > 0 ;
#
# 17: Get the countries that has no recorded independence year and a population above 1000000
SELECT  Name,IndepYear,Population FROM Country WHERE IndepYear is null and Population > 1000000;
#
# 18: Get countries with a SurfaceArea below 10 and a defined LifeExpectancy
SELECT  Name,SurfaceArea,LifeExpectancy FROM Country WHERE SurfaceArea <10 and LifeExpectancy is not null;
