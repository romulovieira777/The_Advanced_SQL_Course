/*
Assignment Question 02

Using analytical window function find the difference between the order total for each order_id and the order_id with the
maximum order total for that month / year

(For the assignment questions we are using V_ORDERS created in the "Assignment Data Preparation" lecture)
*/
SELECT
    *
FROM
    V_ORDERS;


SELECT
    TO_CHAR(ORDER_DATE, 'MM-YY') AS MONTH_YEAR
FROM
    V_ORDERS;


SELECT
    ORDER_ID
  , TO_CHAR(ORDER_DATETIME, 'MM-YY') AS MONTH_YEAR
  , ORDER_TOTAL
  , ORDER_TOTAL - MAX(ORDER_TOTAL) OVER (PARTITION BY TO_CHAR(ORDER_DATETIME, 'MM-YY')) AS DIFF_FROM_MAX
FROM
    V_ORDERS;
