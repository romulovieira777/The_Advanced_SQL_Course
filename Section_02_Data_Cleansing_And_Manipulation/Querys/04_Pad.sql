SELECT
    *
FROM
    emp;


SELECT
    LPAD(empno, 5, 0)
FROM
    emp;


SELECT
    job
  , RPAD(job, 6, 'X')
FROM
    emp;


SELECT
    RPAD(sal, LENGTH(sal) + 3, 0)
FROM
    emp;
