SELECT
    *
FROM
    eba_countries;


SELECT
    name
  , REGEXP_SUBSTR(name, '^A.+a$')
FROM
    eba_countries;


SELECT
    name
  , REGEXP_SUBSTR(name, '^A.+a')
FROM
    eba_countries;


SELECT
    name
  , REGEXP_SUBSTR(name, '^\w+ ')
FROM
    eba_countries;
