SELECT
    region_id
  , sub_region_id
  , SUM(population)
FROM
    eba_countries
GROUP BY
    region_id
  , sub_region_id;


SELECT
    region_id
  , sub_region_id
  , SUM(population)
FROM
    eba_countries
GROUP BY
    ROLLUP (region_id, sub_region_id);


SELECT
    region_id
  , NVL(sub_region_id, 0)
  , SUM(population)
FROM
    eba_countries
GROUP BY
    ROLLUP (region_id, NVL(sub_region_id, 0));
