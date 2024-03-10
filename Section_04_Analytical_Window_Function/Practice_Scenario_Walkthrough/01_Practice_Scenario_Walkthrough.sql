/*
Find the population difference between the countries in the current row vs the country with the highest population
*/
SELECT
    NAME
  , POPULATION
  , MAX(population) OVER()
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , POPULATION -  MAX(population) OVER() AS POPULATION_DIFFERENCE
FROM
    EBA_COUNTRIES;