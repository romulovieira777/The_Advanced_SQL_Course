/*
Arrange the countries in order of population from largest to smallest and find difference between the population of the
current rows country and the country immediately following it
*/
SELECT
    NAME
  , POPULATION
  , LEAD(POPULATION, 1) OVER(ORDER BY POPULATION DESC) AS NEXT_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , LEAD(POPULATION, 1) OVER(ORDER BY POPULATION DESC)              AS NEXT_POPULATION
  , POPULATION - LEAD(POPULATION, 1) OVER(ORDER BY POPULATION DESC) AS POPULATION_DIFFERENCE
FROM
    EBA_COUNTRIES;