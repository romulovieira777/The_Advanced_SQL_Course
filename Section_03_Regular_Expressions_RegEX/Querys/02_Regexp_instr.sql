SELECT
    *
FROM
    eba_countries;


SELECT
    name
  , REGEXP_INSTR(name, 'n')
FROM
    eba_countries;


SELECT
    name
  , REGEXP_INSTR(name, 'n')
FROM
    eba_countries
WHERE
    REGEXP_INSTR(name, 'n') = 7;


SELECT
    name
FROM
    eba_countries
WHERE
    REGEXP_INSTR(name, '\(.+\)') > 0;
