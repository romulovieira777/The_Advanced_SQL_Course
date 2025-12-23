/*
Query the EBA_COUNTRIES table to return values for the total population grouped by SUB_REGION_ID and
ORGANIZATION_REGION_ID, ensure all null value ID’s are populated with 0 instead of null.

I would like you to show sub totals for the following combinations only:
SUB_REGION_ID and ORGANIZATION_REGION_ID,
SUB_REGION_ID,
ORGANIZATION_REGION_ID,
GRAND TOTAL

I would also like you to return a column that returns the GROUPING ID.
*/
-- My Solution:
SELECT
    NVL(SUB_REGION_ID, 0)                              AS SUB_REGION_ID
  , NVL(ORGANIZATION_REGION_ID, 0)                     AS ORGANIZATION_REGION_ID
  , SUM(POPULATION)                                    AS TOTAL_POPULATION
  , GROUPING_ID(SUB_REGION_ID, ORGANIZATION_REGION_ID) AS GROUPING_ID
FROM
    EBA_COUNTRIES
GROUP BY
    ROLLUP (SUB_REGION_ID, ORGANIZATION_REGION_ID)
ORDER BY
    SUB_REGION_ID,
    ORGANIZATION_REGION_ID;

-- Solution Teacher:
SELECT
    NVL(SUB_REGION_ID, 0)
  , NVL(ORGANIZATION_REGION_ID, 0)
  , GROUPING_ID(NVL(SUB_REGION_ID, 0), NVL(ORGANIZATION_REGION_ID, 0)) AS GROUPING_ID
  , SUM(POPULATION)
FROM
    EBA_COUNTRIES
GROUP BY
    CUBE(NVL(SUB_REGION_ID, 0), NVL(ORGANIZATION_REGION_ID, 0));