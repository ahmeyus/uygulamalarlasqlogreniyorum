/* 
SELECT TOP N COLUMN1,COLUMN2,...
FROM TABLOADI
ORDER BY COLUMN1 ASC, COLUMN2 DESC
*/

/* LIMIT, ROWNUM */

SELECT TOP 5 * FROM CUSTOMER
WHERE CITY='İSTANBUL'
ORDER BY CUSTOMERNAME

SELECT TOP 50 PERCENT * FROM CUSTOMER
WHERE CITY='İSTANBUL'
ORDER BY CUSTOMERNAME

