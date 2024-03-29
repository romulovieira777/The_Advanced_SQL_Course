SELECT
    NAME
  , POPULATION
  , REGION_ID
  , SUM(POPULATION) OVER(PARTITION BY REGION_ID) AS REGION_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , REGION_ID
  , SUM(POPULATION) OVER(PARTITION BY REGION_ID, SUB_REGION_ID) AS REGION_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , REGION_ID
  , SUB_REGION_ID
  , SUM(POPULATION) OVER(PARTITION BY REGION_ID, SUB_REGION_ID) AS SUB_REGION_POPULATION
FROM
    EBA_COUNTRIES;
