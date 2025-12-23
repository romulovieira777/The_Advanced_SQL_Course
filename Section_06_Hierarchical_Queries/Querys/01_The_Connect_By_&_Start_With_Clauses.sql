-- Description: This script demonstrates the use of CONNECT BY and START WITH clauses to perform hierarchical queries
-- in Oracle SQL.
SELECT
    *
FROM
    EMP;

-- Hierarchical Query to find all employees under a specific manager (e.g., EMPNO = 7839)
SELECT
    *
FROM
    EMP
CONNECT BY PRIOR EMPNO = MGR;

-- Hierarchical Query to find the chain of command for a specific employee (e.g., EMPNO = 7839)
SELECT
    *
FROM
    EMP
START WITH EMPNO = 7839
CONNECT BY PRIOR EMPNO = MGR;

-- Hierarchical Query to find all top-level managers (employees without a manager)
SELECT
    *
FROM
    EMP
START WITH EMPNO IS NULL
CONNECT BY EMPNO = PRIOR MGR;

-- Hierarchical Query to find all employees under a specific manager (e.g., EMPNO = 7566)
SELECT
    *
FROM
    EMP
START WITH EMPNO = 7566
CONNECT BY EMPNO = PRIOR MGR;

-- Hierarchical Query to find the chain of command for a specific employee (e.g., EMPNO = 7566)
SELECT
    *
FROM
    EMP
START WITH EMPNO = 7566
CONNECT BY PRIOR EMPNO = MGR;