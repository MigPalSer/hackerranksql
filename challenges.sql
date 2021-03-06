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

--https://www.hackerrank.com/challenges/weather-observation-station-8/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '[aeiou]$' AND CITY RLIKE '^[AEIOU]';

--https://www.hackerrank.com/challenges/weather-observation-station-6/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[AEIOU]';

--https://www.hackerrank.com/challenges/weather-observation-station-7/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '[aeiou]$';

--https://www.hackerrank.com/challenges/weather-observation-station-9/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[^AEIOU]';

--https://www.hackerrank.com/challenges/weather-observation-station-10/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '[^aeiou]$';

--https://www.hackerrank.com/challenges/weather-observation-station-11/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[^AEIOU]' OR CITY RLIKE '[^aeiou]$';

--https://www.hackerrank.com/challenges/weather-observation-station-12/problem
SELECT DISTINCT CITY FROM STATION WHERE CITY RLIKE '^[^AEIOU]' AND CITY RLIKE '[^aeiou]$' ORDER BY CITY;

--https://www.hackerrank.com/challenges/more-than-75-marks/problem
SELECT NAME FROM STUDENTS WHERE MARKS > 75 ORDER BY SUBSTRING(NAME, -3), ID;

--https://www.hackerrank.com/challenges/salary-of-employees/problem
SELECT NAME FROM EMPLOYEE WHERE SALARY>2000 AND MONTHS<10 ORDER BY EMPLOYEE_ID;

--https://www.hackerrank.com/challenges/what-type-of-triangle/problem
SELECT 
CASE
WHEN (A+B)<=C OR (A+C)<=B OR (B+C)<=C THEN 'Not A Triangle'
ELSE
CASE 
WHEN A=B AND B=C THEN 'Equilateral'
WHEN A=B OR B=C OR A=C THEN 'Isosceles'
ELSE  'Scalene'
END
END
FROM TRIANGLES;

--https://www.hackerrank.com/challenges/the-pads/problem
SELECT CONCAT(NAME, CASE
    WHEN OCCUPATION='DOCTOR' THEN '(D)'
    WHEN OCCUPATION='SINGER' THEN '(S)'
    WHEN OCCUPATION='ACTOR' THEN '(A)'
    WHEN OCCUPATION='PROFESSOR' THEN '(P)'
    END)
FROM OCCUPATIONS ORDER BY NAME;
SELECT CONCAT ('There are a total of ', COUNT(OCCUPATION),' ', LOWER(OCCUPATION),'s.') FROM OCCUPATIONS GROUP BY OCCUPATION ORDER BY COUNT(OCCUPATION), OCCUPATION;

--https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
SELECT COUNT(NAME) FROM CITY WHERE POPULATION>100000;

--https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
SELECT SUM(POPULATION) FROM CITY WHERE DISTRICT='California';

--https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
SELECT AVG(POPULATION) FROM CITY WHERE DISTRICT='California';

--https://www.hackerrank.com/challenges/average-population/problem
SELECT ROUND(AVG(POPULATION)) FROM CITY;

--https://www.hackerrank.com/challenges/japan-population/problem
SELECT SUM(POPULATION) FROM CITY WHERE COUNTRYCODE='JPN';

--https://www.hackerrank.com/challenges/population-density-difference/problem
SELECT MAX(POPULATION)-MIN(POPULATION) FROM CITY;

--https://www.hackerrank.com/challenges/the-blunder/problem
SELECT CEIL(AVG(SALARY)-AVG(REPLACE(SALARY, "0", ""))) FROM EMPLOYEES;

--https://www.hackerrank.com/challenges/earnings-of-employees/problem
SELECT MAX(SALARY*MONTHS), COUNT(SALARY*MONTHS) FROM EMPLOYEE GROUP BY SALARY*MONTHS ORDER BY SALARY*MONTHS DESC LIMIT 1; 

--https://www.hackerrank.com/challenges/weather-observation-station-2/problem
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

--https://www.hackerrank.com/challenges/weather-observation-station-13/problem
SELECT TRUNCATE(SUM(LAT_N), 4) FROM STATION WHERE LAT_N>38.7880 AND LAT_N<137.2345; 

--https://www.hackerrank.com/challenges/weather-observation-station-14/problem
SELECT TRUNCATE(MAX(LAT_N),4) FROM STATION WHERE LAT_N<137.2345;

--https://www.hackerrank.com/challenges/weather-observation-station-15/
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N<137.2345 ORDER BY LAT_N DESC LIMIT 1;

--https://www.hackerrank.com/challenges/weather-observation-station-16/problem
SELECT ROUND(LAT_N, 4) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N ASC LIMIT 1;

--https://www.hackerrank.com/challenges/weather-observation-station-17/problem
SELECT ROUND(LONG_W, 4) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N ASC LIMIT 1;

--https://www.hackerrank.com/challenges/weather-observation-station-16/problem
SELECT ROUND(LAT_N, 4) FROM STATION WHERE LAT_N>38.7780 ORDER BY LAT_N ASC LIMIT 1;

--https://www.hackerrank.com/challenges/weather-observation-station-18/problem
SELECT ROUND(ABS(MAX(LAT_N)-MIN(LAT_N))+ABS(MAX(LONG_W)-MIN(LONG_W)),4) FROM STATION;

--https://www.hackerrank.com/challenges/weather-observation-station-19/problem
SELECT ROUND(SQRT(POWER(MAX(LAT_N)-MIN(LAT_N),2)+POWER(MAX(LONG_W)-MIN(LONG_W),2)),4) FROM STATION;

--
