--EN ÇOK SATIŞ YAPILAN ÜRÜN KATEGORİLERİ
SELECT I.CATEGORY1, SUM(OD.TOTALPRICE) AS TOTAL
FROM ITEM I
INNER JOIN ORDERDETAIL OD ON OD.ITEMID=I.ID
INNER JOIN ORDER_ O ON O.ID=OD.ORDERID
GROUP BY I.CATEGORY1
ORDER BY SUM(OD.TOTALPRICE) DESC 







--EN ÇOK SATIŞ YAPILAN ÜRÜN KATEGORİLERİ
SELECT I.CATEGORY1, I.CATEGORY2, I.CATEGORY3, SUM(OD.TOTALPRICE) AS TOTAL
FROM ITEM I
INNER JOIN ORDERDETAIL OD ON OD.ITEMID=I.ID
INNER JOIN ORDER_ O ON O.ID=OD.ORDERID
WHERE I.CATEGORY1='elektronik-gida-disi'
AND I.CATEGORY2='beyaz-esya'
GROUP BY I.CATEGORY1, I.CATEGORY2, I.CATEGORY3
ORDER BY SUM(OD.TOTALPRICE) DESC 
