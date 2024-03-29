SELECT
    NAME
  , REGION_ID
  , SUB_REGION_ID
  , POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS REGION_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , REGION_ID
  , SUB_REGION_ID
  , POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS REGION_POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS WORLD_POPULATION
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , REGION_ID
  , SUB_REGION_ID
  , POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)    AS REGION_POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING)                    AS WORLD_POPULATION
  , SUM(POPULATION) OVER (PARTITION BY REGION_ID, SUB_REGION_ID ORDER BY SUB_REGION_ID ROWS BETWEEN CURRENT ROW AND 2 FOLLOWING)                    AS WORLD_POPULATION_RATIO
FROM
    EBA_COUNTRIES;
