/*
SELECT COLUMN1, COLUMN2...
FROM TABLOADI
ORDER BY COLUMN1 ASC, COLUMN2 DESC
*/

SELECT * FROM CUSTOMER
ORDER BY CITY

SELECT * FROM CUSTOMER
ORDER BY CITY, CUSTOMERNAME

SELECT * FROM CUSTOMER
ORDER BY CITY, CUSTOMERNAME DESC

/* bir şey yazmazsak sistem ASC kabul eder*/

SELECT * FROM CUSTOMER
ORDER BY CITY DESC, BIRTHDATE

SELECT * FROM CUSTOMER
ORDER BY 3               /* sütünlarda 3. değere göre sıralar*/
