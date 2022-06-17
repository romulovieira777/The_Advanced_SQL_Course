SELECT
    *
FROM
    customers;


SELECT
    full_name
  , REGEXP_SUBSTR(full_name, '[[:alpha:]]+ ')
FROM
    customers;


SELECT
    full_name
  , REGEXP_SUBSTR(full_name, '\w+')
FROM
    customers;
