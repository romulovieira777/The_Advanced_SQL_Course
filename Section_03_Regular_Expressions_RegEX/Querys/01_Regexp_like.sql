SELECT
    *
FROM
    customers;


SELECT
    *
FROM
    customers
WHERE
    REGEXP_LIKE(full_name, '\w+ \w+ \w+');


SELECT
    *
FROM
    stores;


SELECT
    *
FROM
    stores
WHERE
    REGEXP_LIKE(physical_address, ' [A-Z]{2} \d{5}');


SELECT
    *
FROM
    customers;


SELECT
    *
FROM
    customers
WHERE
    REGEXP_LIKE(full_name, '^(Stephen|Steven)');


SELECT
    *
FROM
    customers
WHERE
    REGEXP_LIKE(full_name, '^Ste(ph|v)en');
