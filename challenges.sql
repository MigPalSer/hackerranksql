--Challenges from hackerrank.com for SQL. I use the MySQL syntaxis.

--https://www.hackerrank.com/challenges/revising-the-select-query/problem
SELECT * FROM CITY WHERE POPULATION > 100000 AND COUNTRYCODE="USA";

--https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
SELECT NAME FROM CITY WHERE POPULATION > 120000 AND COUNTRYCODE="USA";

--https://www.hackerrank.com/challenges/select-all-sql/problem
SELECT * FROM CITY;

--https://www.hackerrank.com/challenges/select-by-id/problem
SELECT * FROM CITY WHERE ID=1661;

--https://www.hackerrank.com/challenges/japanese-cities-attributes/
SELECT * FROM CITY WHERE COUNTRYCODE="JPN";

--https://www.hackerrank.com/challenges/japanese-cities-name/problem
SELECT NAME FROM CITY WHERE COUNTRYCODE="JPN";

--https://www.hackerrank.com/challenges/weather-observation-station-1/problem
SELECT CITY, STATE FROM STATION;

--https://www.hackerrank.com/challenges/name-of-employees/problem
SELECT NAME FROM EMPLOYEE ORDER BY NAME;

--https://www.hackerrank.com/challenges/weather-observation-station-3/problem
SELECT DISTINCT CITY FROM STATION WHERE ID%2=0;

--https://www.hackerrank.com/challenges/weather-observation-station-4/problem
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;

--https://www.hackerrank.com/challenges/weather-observation-station-5/problem
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY), CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) FROM STATION ORDER BY LENGTH(CITY) DESC, CITY LIMIT 1;
