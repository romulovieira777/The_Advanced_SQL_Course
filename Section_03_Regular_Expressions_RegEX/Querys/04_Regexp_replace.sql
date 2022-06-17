SELECT
    *
FROM
    customers;


SELECT
    email_address
  , REGEXP_REPLACE(email_address, 'internalmail', 'internalmail.com')
FROM
    customers;


SELECT
    email_address
  , REGEXP_REPLACE(email_address, '\.', '-')
FROM
    customers;


SELECT
    email_address
  , REGEXP_REPLACE(email_address, '(.+)(@)(.+)', '\3\2\1')
FROM
    customers;
