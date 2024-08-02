/*
Assignment Question 03

Using analytical window function find the order total for each order_id and subtract the three month rolling average order
total (the average of the current month and the previous two months).

Your solution only calculate the rolling average for months that are in the same year.

(For the assignment questions we are using V_ORDERS created in the "Assignment Data Preparation" lecture)
*/
SELECT
    ORDER_DATETIME, TO_NUMBER(TO_CHAR(ORDER_DATETIME, 'YYYYMM')) AS YEAR_MONTH
FROM
    V_ORDERS;


SELECT
    ORDER_ID
  , TO_CHAR(ORDER_DATETIME, 'MM-YY') AS MONTH_YEAR
  , ORDER_TOTAL
  , AVG(ORDER_TOTAL) OVER (PARTITION BY TO_NUMBER(TO_CHAR(ORDER_DATETIME, 'YYMM')) RANGE 2 PRECEDING) AS AVG_THREE_MONTH
  , ORDER_TOTAL - AVG(ORDER_TOTAL) OVER (PARTITION BY TO_NUMBER(TO_CHAR(ORDER_DATETIME, 'YYMM')) RANGE 2 PRECEDING) AS VAR
FROM
    V_ORDERS;
