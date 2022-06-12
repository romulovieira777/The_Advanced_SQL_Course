SELECT
    *
FROM
    emp;


SELECT
    emp.*
  , LEAST(sal, 3000)
FROM
    emp;
