/*
Pivot the EMP Table to show the total salary by JOB and DEPTNO in matrix form (pivoting the JOB column)
*/

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
