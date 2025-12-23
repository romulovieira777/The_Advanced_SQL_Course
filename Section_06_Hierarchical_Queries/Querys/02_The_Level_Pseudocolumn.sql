-- The LEVEL Pseudocolumn in Hierarchical Queries
-- This script demonstrates the use of the LEVEL pseudocolumn in hierarchical queries to indicate the depth
-- of each row in the hierarchy.
SELECT
    *
FROM
    EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR;

-- Using LEVEL Pseudocolumn to Indicate Hierarchy Depth
SELECT
    EMP.*
  , LEVEL
FROM
    EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR;

-- Using LEVEL Pseudocolumn for a Specific Employee Hierarchy
SELECT
    EMP.*
  , LEVEL
FROM
    EMP
START WITH EMPNO = 7698
CONNECT BY PRIOR EMPNO = MGR;

-- Using LEVEL Pseudocolumn for a Specific Employee Hierarchy
SELECT
    EMP.*
  , LEVEL
FROM
    EMP
START WITH EMPNO = 7566
CONNECT BY PRIOR EMPNO = MGR;