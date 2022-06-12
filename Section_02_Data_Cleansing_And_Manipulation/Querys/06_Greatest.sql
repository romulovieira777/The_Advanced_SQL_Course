SELECT
    emp.*, GREATEST(sal, 1000)
FROM
    emp;
