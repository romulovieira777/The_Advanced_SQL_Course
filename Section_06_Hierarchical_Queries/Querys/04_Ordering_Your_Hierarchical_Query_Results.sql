-- Ordering Your Hierarchical Query Results
-- In a hierarchical query, you can use the ORDER SIBLINGS BY clause to order the rows at each level of the hierarchy.
-- The ORDER SIBLINGS BY clause sorts the rows that have the same parent before moving on to the next parent.
-- Here is an example of how to use the ORDER SIBLINGS BY clause in a hierarchical query:
SELECT
    EMP.*
  , LEVEL
FROM
    EMP
START WITH EMPNO = 7698
CONNECT BY PRIOR EMPNO = MGR;

-- To order the results of the hierarchical query by employee name (ENAME) at each level of the hierarchy, you can use
-- the ORDER BY clause as follows:
SELECT
    EMP.*
  , LEVEL
FROM
    EMP
START WITH EMPNO = 7698
CONNECT BY PRIOR EMPNO = MGR
ORDER BY
    ENAME;

-- However, using the ORDER BY clause in a hierarchical query will sort the entire result set after the hierarchy has
-- been built, which may not preserve the hierarchical structure. To maintain the hierarchy while ordering siblings,
-- you should use the ORDER SIBLINGS BY clause:
SELECT
    EMP.*
  , LEVEL
FROM
    EMP
START WITH EMPNO = 7698
CONNECT BY PRIOR EMPNO = MGR
ORDER SIBLINGS BY
    ENAME;