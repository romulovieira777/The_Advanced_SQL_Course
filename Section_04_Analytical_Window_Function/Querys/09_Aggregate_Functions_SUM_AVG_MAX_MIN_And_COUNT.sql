SELECT
    NAME
  , REGION_ID
  , SUM(POPULATION) OVER()
  , MIN(POPULATION) OVER()
  , MAX(POPULATION) OVER()
  , COUNT(POPULATION) OVER()
  , AVG(POPULATION) OVER()
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , REGION_ID
  , SUM(POPULATION) OVER(PARTITION BY REGION_ID)
  , MIN(POPULATION) OVER(PARTITION BY REGION_ID)
  , MAX(POPULATION) OVER(PARTITION BY REGION_ID)
  , COUNT(POPULATION) OVER(PARTITION BY REGION_ID)
  , AVG(POPULATION) OVER(PARTITION BY REGION_ID)
FROM
    EBA_COUNTRIES;
