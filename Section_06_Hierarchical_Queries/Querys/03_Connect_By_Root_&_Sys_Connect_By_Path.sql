-- Description: This query retrieves all employees in a hierarchical structure starting from the top-level managers
-- (those without a manager).
SELECT
    *
FROM
    EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves all employees along with the root employee's name (top-level manager) for each employee in the
-- hierarchy.
SELECT
    EMP.*
  , CONNECT_BY_ROOT ENAME
FROM
    EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves all employees along with the root employee's name (top-level manager) for each employee in the
-- hierarchy, and renames the root employee's name column to "ROOT ENAME".
SELECT
    EMP.*
  , CONNECT_BY_ROOT ENAME "ROOT ENAME"
FROM
    EMP
START WITH MGR IS NULL
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves the hierarchy of employees starting from the employee with EMPNO 7566, along with the root employee's EMPNO for each employee in the hierarchy,
-- renaming the root employee's EMPNO column to "ROOT EMPNO".
SELECT
    EMP.*
  , CONNECT_BY_ROOT EMPNO "ROOT EMPNO"
FROM
    EMP
START WITH EMPNO = 7566
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves the entire hierarchy of employees without a specific starting point, along with the root
-- employee's EMPNO for each employee in the hierarchy, renaming the root employee's EMPNO column to "ROOT EMPNO".
SELECT
    EMP.*
  , CONNECT_BY_ROOT EMPNO "ROOT EMPNO"
FROM
    EMP
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves the entire hierarchy of employees without a specific starting point, along with the root
-- employee's name for each employee in the hierarchy, renaming the root employee's name column to "ROOT ENAME".
SELECT
    EMP.*
  , CONNECT_BY_ROOT ENAME "ROOT ENAME"
FROM
    EMP
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves the hierarchy of employees starting from the employee with EMPNO 7566, along with the full path
-- of employee names from the root to each employee in the hierarchy.
SELECT
    EMP.*
  , CSYS_CONNECT_BY_PATH(ENAME, ' - ')
FROM
    EMP
START WITH EMPNO = 7566
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves the entire hierarchy of employees without a specific starting point, along with the full path
-- of employee names from the root to each employee in the hierarchy.
SELECT
    EMP.*
  , LEVEL
  , CSYS_CONNECT_BY_PATH(ENAME, ' - ')
FROM
    EMP
CONNECT BY PRIOR EMPNO = MGR;

-- This query retrieves the entire hierarchy of employees without a specific starting point, along with the full path
-- of employee names from the root to each employee in the hierarchy, using ' / ' as the separator.
SELECT
    EMP.*
  , LEVEL
  , CSYS_CONNECT_BY_PATH(ENAME, ' / ')
FROM
    EMP
CONNECT BY PRIOR EMPNO = MGR;