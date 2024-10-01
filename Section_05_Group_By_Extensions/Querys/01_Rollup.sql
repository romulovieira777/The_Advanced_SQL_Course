SELECT
    NVL(region_id, 0)
  , NVL(sub_region_id, 0)
  , SUM(population)
FROM
    eba_countries
GROUP BY
    NVL(region_id, 0)
  , NVL(sub_region_id, 0);


SELECT
    NVL(region_id, 0)
  , NVL(sub_region_id, 0)
  , SUM(population)
FROM
    eba_countries
GROUP BY
    ROLLUP(NVL(region_id, 0), NVL(sub_region_id, 0));


SELECT
    NVL(region_id, 0)
  , NVL(sub_region_id, 0)
  , NVL(organization_region_id, 0)
  , SUM(population)
FROM
    eba_countries
GROUP BY
    ROLLUP (NVL(region_id, 0), NVL(sub_region_id, 0), NVL(organization_region_id, 0));


SELECT
    NVL(region_id, 0)
  , NVL(sub_region_id, 0)
  , NVL(organization_region_id, 0)
  , SUM(population)
FROM
    eba_countries
GROUP BY
    NVL(organization_region_id, 0)
  , ROLLUP (NVL(region_id, 0), NVL(sub_region_id, 0));
