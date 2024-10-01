SELECT
    NVL(region_id, 0)     AS region_id
  , NVL(sub_region_id, 0) AS sub_region_id
  , SUM(population)       AS population
FROM
    eba_countries
GROUP BY
    CUBE (NVL(region_id, 0), NVL(sub_region_id, 0));


SELECT
    NVL(region_id, 0)     AS region_id
  , NVL(sub_region_id, 0) AS sub_region_id
  , SUM(population)       AS population
FROM
    eba_countries
GROUP BY
    ROLLUP (NVL(region_id, 0), NVL(sub_region_id, 0));
