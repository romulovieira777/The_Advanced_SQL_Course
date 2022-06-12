SELECT
    *
FROM
    emp;


SELECT
    ename
  , TRIM('K' FROM ename)
FROM
    emp;


SELECT
    TRIM(' ' FROM '   whitespace  ')
FROM
    dual;


SELECT
    LENGTH(TRIM(' ' FROM '   whitespace  '))
FROM
    dual;


SELECT
    LENGTH(TRIM(LEADING ' ' FROM '   whitespace   '))
FROM
    dual;


SELECT
    LENGTH(TRIM(TRAILING ' ' FROM '   whitespace   '))
FROM
    dual;
