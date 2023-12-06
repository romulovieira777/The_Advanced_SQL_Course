SELECT
    NAME
  , REGION_ID
  , SUB_REGION_ID
  , POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS 2 PRECEDING) AS REGION_POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN 2 PRECEDING AND CURRENT ROW) AS WORLD_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , REGION_ID
  , SUB_REGION_ID
  , POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS 2 PRECEDING) AS REGION_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , REGION_ID
  , SUB_REGION_ID
  , POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING) AS WORLD_POPULATION
FROM
    EBA_COUNTRIES;
