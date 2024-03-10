SELECT
    NAME
  , POPULATION
  , LAG(NAME) OVER (ORDER BY NAME)
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , LAG(NAME) OVER (ORDER BY NAME)
  , LAG(NAME, 2) OVER (ORDER BY NAME)
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , LAG(NAME) OVER (ORDER BY NAME)
  , LAG(NAME, 2, 'blank') OVER (ORDER BY NAME)
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , LEAD(NAME) OVER (ORDER BY NAME)
  , LEAD(NAME, 2) OVER (ORDER BY NAME)
  , LEAD(NAME, 2, 'blank') OVER (ORDER BY NAME)
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , NTILE(3) OVER (ORDER BY POPULATION)
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , NTILE(3) OVER (PARTITION BY REGION_ID ORDER BY POPULATION)
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , NTH_VALUE(NAME, 2) OVER ()
FROM
    EBA_COUNTRIES;


SELECT
    NAME
  , POPULATION
  , REGION_ID
  , NTH_VALUE(NAME, 2) OVER (PARTITION BY REGION_ID ORDER BY REGION_ID)
FROM
    EBA_COUNTRIES;