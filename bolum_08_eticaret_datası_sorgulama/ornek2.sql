--EN ÇOK SATIŞ YAPILAN MÜŞTERİLER
SELECT U.USERNAME_,U.NAMESURNAME,
SUM(BD.TOTAL) AS  TOTAL
FROM
USER_ U
INNER JOIN BASKET B ON  B.USERID=U.ID
INNER JOIN BASKETDETAIL BD ON BD.BASKETID=B.ID
GROUP BY U.USERNAME_,U.NAMESURNAME
ORDER BY SUM(BD.TOTAL) DESC





--EN ÇOK SATIŞ YAPILAN 10 MÜŞTERİ
SELECT TOP 10 U.USERNAME_,U.NAMESURNAME,
SUM(BD.TOTAL) AS  TOTAL
FROM
USER_ U
INNER JOIN BASKET B ON  B.USERID=U.ID
INNER JOIN BASKETDETAIL BD ON BD.BASKETID=B.ID
GROUP BY U.USERNAME_,U.NAMESURNAME
ORDER BY SUM(BD.TOTAL) DESC
