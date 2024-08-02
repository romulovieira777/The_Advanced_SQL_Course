/*
Assigment Question 01

For each customer rank their from highest to lowest in terms of order total using Analytical Window Function (use RANK()).

(For the assignment questions we are using V_ORDERS created in the "Assignment Data Preparation" lecture)
*/
SELECT
    ORDER_ID
  , CUSTOMER_ID
  , ORDER_TOTAL
  , RANK() OVER (PARTITION BY CUSTOMER_ID ORDER BY ORDER_TOTAL DESC) AS RANK
FROM
    V_ORDERS;
