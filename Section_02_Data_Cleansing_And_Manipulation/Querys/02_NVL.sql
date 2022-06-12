SELECT
    *
FROM
    emp;


SELECT
    emp.*
  , NVL(comm, 0)
FROM
    emp;


-- Não pode ser string pq o dado de retorno é inteiro
SELECT
    emp.*
  , NVL(comm, 'No Commision')
FROM
    emp;


INSERT INTO 
    emp
VALUES(0, null, 'Test', 0, sysdate, 1000, null, 10);


SELECT
    ename
  , NVL(ename, 'No Name')
FROM
    emp;


DELETE FROM
    emp
WHERE
    ename IS NULL;
