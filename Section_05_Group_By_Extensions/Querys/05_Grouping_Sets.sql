-- Selecting population by different grouping sets
SELECT
    NVL(REGION_ID, 0)
  , NVL(SUB_REGION_ID, 0)
  , NVL(ORGANIZATION_REGION_ID, 0)
  , SUM(POPULATION)
FROM
    EBA_COUNTRIES
GROUP BY GROUPING SETS (NVL(REGION_ID, 0),
                         NVL(SUB_REGION_ID, 0),
                         NVL(ORGANIZATION_REGION_ID, 0)
                        );

-- Same query with different formatting
SELECT
    NVL(REGION_ID, 0)
  , NVL(SUB_REGION_ID, 0)
  , NVL(ORGANIZATION_REGION_ID, 0)
  , SUM(POPULATION)
FROM
    EBA_COUNTRIES
GROUP BY GROUPING SETS (NVL(REGION_ID, 0),
                         NVL(SUB_REGION_ID, 0),
                         NVL(ORGANIZATION_REGION_ID, 0), ()
                         );

-- Another variation of the same query
SELECT
    NVL(REGION_ID, 0)
  , NVL(SUB_REGION_ID, 0)
  , NVL(ORGANIZATION_REGION_ID, 0)
  , SUM(POPULATION)
FROM
    EBA_COUNTRIES
GROUP BY GROUPING SETS ((NVL(REGION_ID, 0),
                         NVL(SUB_REGION_ID, 0)),
                         NVL(ORGANIZATION_REGION_ID, 0)
                         );