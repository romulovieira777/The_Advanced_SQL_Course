SELECT
    *
FROM
    emp;


SELECT
    SUM(sal)
  , job
FROM
    emp
GROUP BY
    job;


SELECT
    emp.*
  , dept.*
FROM
    emp
INNER JOIN
    dept
ON
    emp.deptno = dept.deptno;
