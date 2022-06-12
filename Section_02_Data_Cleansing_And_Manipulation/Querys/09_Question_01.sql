SELECT
    DISTINCT job
FROM
    emp;


SELECT
    *
FROM
    (
        SELECT
            deptno
          , job
          , sal
        FROM
            emp
    )
PIVOT
    (
        SUM(sal) FOR job IN('ANALYST', 'CLERK', 'SALESMAN', 'MANAGER', 'PRESIDENT')
    );
