CREATE VIEW V_ORDER_YEAR_MONTH AS (
SELECT
    TO_CHAR(ORDER_DATETIME, 'YYYY-MM') AS YEAR_MONTH
  , SUM(ORDER_TOTAL) AS YEAR_MONTH_TOTAL
FROM
    V_ORDERS
GROUP BY
    TO_CHAR(ORDER_DATETIME,'YYYY-MM'));


/*
On the above view use Analytical Functions to create a running total column using the YEAR_MONTH_TOTAL field ordered  by
the YEAR_MONTH field in ascending order
*/
SELECT
    YEAR_MONTH
  , YEAR_MONTH_TOTAL
  , SUM(YEAR_MONTH_TOTAL) OVER (ORDER BY YEAR_MONTH ASC ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_TOTAL
FROM
    V_ORDER_YEAR_MONTH;


SELECT
    YEAR_MONTH
  , YEAR_MONTH_TOTAL
  , SUM(YEAR_MONTH_TOTAL) OVER (ORDER BY YEAR_MONTH ASC RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RUNNING_TOTAL
FROM
    V_ORDER_YEAR_MONTH;