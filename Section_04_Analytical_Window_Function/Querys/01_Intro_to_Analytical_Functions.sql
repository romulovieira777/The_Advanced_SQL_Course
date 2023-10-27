SELECT
    *
FROM
    EBA_COUNTRIES;


SELECT
    REGION_ID
  , SUM(POPULATION)
FROM
    EBA_COUNTRIES
GROUP BY
    REGION_ID;


SELECT
    A.NAME
  , A.REGION_ID
  , A.POPULATION
  , B.REGION_POPULATION
  , ROUND(A.POPULATION / B.REGION_POPULATION * 100, 2) AS PCT_OF_REGION_TOTAL
FROM
    EBA_COUNTRIES A
LEFT JOIN
    (
        SELECT
            REGION_ID
          , SUM(POPULATION) AS REGION_POPULATION
        FROM
            EBA_COUNTRIES
        GROUP BY
            REGION_ID
    ) B
ON
    A.REGION_ID = B.REGION_ID;


SELECT
    NAME
  , POPULATION
  , REGION_ID
  , ROUND(POPULATION / SUM(POPULATION) OVER (PARTITION BY REGION_ID) * 100, 2) AS PCT_OF_REGION_TOTAL
FROM
    EBA_COUNTRIES;
