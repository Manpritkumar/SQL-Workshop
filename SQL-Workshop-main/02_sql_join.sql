# SQL Join exercise
#

#
# 1: Get the cities with a name starting with ping sorted by their population with the least populated cities first
SELECT  Name, Population FROM City WHERE Name like "Ping%" order by Population asc ;
#
# 2: Get the cities with a name starting with ran sorted by their population with the most populated cities first
SELECT  Name, Population FROM City WHERE Name like "ran%" order by Population desc ;
#
# 3: Count all cities
 SELECT  count(*) from City;
#
# 4: Get the average population of all cities
 SELECT  avg(population) from City;
#
# 5: Get the biggest population found in any of the cities
 SELECT  max(population) from City;
#
# 6: Get the smallest population found in any of the cities
SELECT  min(population) from City;
#
# 7: Sum the population of all cities with a population below 10000
 SELECT  sum(population) from City Where population <10000;
#
# 8: Count the cities with the countrycodes MOZ and VNM
SELECT  count(*) from City Where countrycode in("MOZ","VNM");
#
# 9: Get individual count of cities for the countrycodes MOZ and VNM
SELECT  count(*), CountryCode from City Where countrycode in("MOZ","VNM") group by CountryCode;
#
# 10: Get average population of cities in MOZ and VNM
SELECT  avg(population), CountryCode from City Where countrycode in("MOZ","VNM") group by CountryCode;

#
# 11: Get the countrycodes with more than 200 cities
SELECT  count(*) , CountryCode from City group by CountryCode having count(*)>200 ;

#
# 12: Get the countrycodes with more than 200 cities ordered by city count
SELECT  count(*) , CountryCode from City group by CountryCode having count(*)>200 order by count(*)  ;

#
# 13: What language(s) is spoken in the city with a population between 400 and 500 ?
SELECT language
FROM City 
INNER JOIN countrylanguage
ON City.CountryCode= countrylanguage.CountryCode
WHERE city.population BETWEEN 400 AND 500;
#
# 14: What are the name(s) of the cities with a population between 500 and 600 people and the language(s) spoken in them
SELECT name,language
FROM City 
INNER JOIN countrylanguage
ON City.CountryCode= countrylanguage.CountryCode
WHERE city.population BETWEEN 500 AND 600;
#
# 15: What names of the cities are in the same country as the city with a population of 122199 (including the that city itself)
SELECT city.Name
FROM city 
JOIN country
ON city.CountryCode=country.Code
WHERE city.population =122199;
#
# 16: What names of the cities are in the same country as the city with a population of 122199 (excluding the that city itself)
#
#
# 17: What are the city names in the country where Luanda is capital?
SELECT City.Name
FROM City
JOIN Country ON City.Id = Country.capital
WHERE City.Name = 'Luanda';
#
# 18: What are the names of the capital cities in countries in the same region as the city named Yaren
SELECT City.Name, Country.Name
FROM City
JOIN Country ON City.Id = Country.capital
WHERE City.Name = 'Yaren';
#
# 19: What unique languages are spoken in the countries in the same region as the city named Riga
#
#
# 20: Get the name of the most populous city
#
