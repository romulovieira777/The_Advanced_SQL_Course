SELECT
    *
FROM
    eba_countries;


SELECT
    *
FROM
    (SELECT
        region_id
      , sub_region_id
      , population 
     FROM
        eba_countries)
PIVOT(SUM(population) FOR region_id IN());


SELECT
    DISTINCT(region_id)
FROM
    eba_countries;


SELECT
    *
FROM
    (SELECT
        region_id
      , sub_region_id
      , population 
     FROM
        eba_countries)
PIVOT(SUM(population) FOR region_id IN(10, 20, 30, 40, 50));


SELECT
    *
FROM
    (
        SELECT
        region_id
      , sub_region_id
     FROM
        eba_countries
    )
PIVOT(COUNT(region_id) FOR region_id IN(10, 20, 30, 40, 50));
