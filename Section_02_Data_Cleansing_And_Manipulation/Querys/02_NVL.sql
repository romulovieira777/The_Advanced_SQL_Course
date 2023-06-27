SELECT
    *
FROM
    emp;


SELECT
    emp.*
  , NVL(comm, 0)
FROM
    emp;


-- It cannot be a string because the return data is an integer.
SELECT
    emp.*
  , NVL(comm, 'No Commision')
FROM
    emp;



SELECT
    *
FROM
    emp;



INSERT INTO
  emp
VALUES
  (0, NULL, 'Test', 0, sysdate, 1000, NULL, 10);



SELECT
    *
FROM
    emp;



SELECT
    ename
  , NVL(ename, 'No Name')
FROM
    emp;


DELETE FROM
    emp
WHERE
    ename IS NULL;
