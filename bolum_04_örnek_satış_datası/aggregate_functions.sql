/* 
SUM COUNT MIN MAX AVG
---
SELECT
SUM (PRICE), COUNT(ID), MIN(PRICE), MAX(PRICE), AVG(PRICE)
FROM TABLOADI
----
*/

SELECT SUM(LINENET) FROM SALES WHERE BRANCH='Kocaeli Subesi'
SELECT SUM(LINENET), COUNT(*) FROM SALES WHERE BRANCH='Kocaeli Subesi'
SELECT SUM(LINENET), COUNT(*), MIN(LINENET), MAX(LINENET) FROM SALES WHERE BRANCH='Kocaeli Subesi'

/* LINENET ürün satış fiyatını gösteriyor. */

SELECT SUM(LINENET) AS TOPLAMSATIS, COUNT(*) AS SATIRSAYISI, MIN(LINENET) AS ENUCUZFIYAT, MAX(LINENET) AS ENPAHALIFIYAT FROM SALES WHERE BRANCH='Kocaeli Subesi'

/* blabla AS ALANADI    yaparak gelen alanların üstüne isim ekledik. */


--GROUP BY İLE HER BİR ŞUBENİN YUKARIDAKİ DEĞERLERİNİ GETİRİR.
SELECT
BRANCH,
SUM(LINENET) AS TOPLAMSATIS,
COUNT(*) AS SATIRSAYISI,
MIN(LINENET) AS ENDUSUKFIYAT,
MAX(LINENET) AS ENYUKSEKFIYAT,
AVG(LINENET) AS ORTALAMASATISFIYATI
FROM SALES
GROUP BY BRANCH



SELECT BRANCH AS SUBEADI, SUM(LINENET) AS TOPLAMSATIS
FROM SALES
GROUP BY BRANCH ORDER BY SUM(LINENET) DESC
--şubelerin satışlarını topladı ve yüksekten azalacak şekilde sıraladı



SELECT TOP 10 BRANCH AS SUBEADI, SUM(LINENET) AS TOPLAMSATIS
FROM SALES
GROUP BY BRANCH ORDER BY SUM(LINENET) DESC
--aynı işlem yapıldı sadece en yüksek 10 şube gösterildi


SELECT BRANCH AS SUBEADI, SUM(LINENET) AS TOPLAMSATIS
FROM SALES
GROUP BY BRANCH
HAVING SUM(LINENET)>50000
ORDER BY SUM(LINENET) DESC
--toplam satışı 50binden büyük olan mağazaları getir. WHERE değil HAVING kullanılır.




--bir mağazanın gün bazlı satış rakamları
SELECT BRANCH AS SUBE, DATE_ AS TARIH,SUM(LINENET) AS TOPLAMSATIS FROM SALES
WHERE BRANCH='BURSA SUBESI' AND DATE_='20190105'
GROUP BY BRANCH, DATE_



--bir mağazanın günlük satışlarının güne göre sıralanması
SELECT BRANCH AS SUBE, DATE_ AS TARIH,SUM(LINENET) AS TOPLAMSATIS FROM SALES
WHERE BRANCH='BURSA SUBESİ'
GROUP BY BRANCH, DATE_
ORDER BY DATE_



--ARA NOT: SELECT * FROM  SALES WHERE BRANCH='ANKARA SUBESİ' ORDER BY DATE_



--Bütün şubelerin günlük satışları:
SELECT BRANCH SUBE, DATE_ TARIH, SUM(LINENET) TOPLAMSATIS, COUNT(*) SATIRSAYISI
FROM SALES
GROUP BY BRANCH, DATE_
ORDER BY BRANCH, DATE_



--bir günün mağaza bazlı satış rakamları
SELECT DATE_,BRANCH,SUM(LINENET) FROM SALES
WHERE DATE_='20170105'
GROUP BY DATE_,BRANCH
ORDER BY DATE_,BRANCH





--ürün kategorilerine göre satış rakamları
SELECT CATEGORY_NAME1,SUM(LINENET) FROM
SALES
WHERE CATEGORY_NAME1 IS NOT NULL     --= YERİNE IS null gibi değerlerde
GROUP BY CATEGORY_NAME1
ORDER BY SUM(LINENET) DESC



--bir ürün kategorisinin altında markaların toplam satışlarını getirme
SELECT CATEGORY_NAME1, BRAND, SUM(LINENET) FROM
SALES
WHERE CATEGORY_NAME1 IS NOT NULL AND CATEGORY_NAME1='GIDA'     
GROUP BY CATEGORY_NAME1, BRAND
ORDER BY SUM(LINENET) DESC





--ürün markasına göre satışlar
SELECT BRAND, SUM(LINENET) FROM SALES
WHERE BRAND IS NOT NULL
GROUP BY NULL
ORDER BY SUM(LINENET) DESC





--ülkerin altında en çok ne satıyor?
SELECT BRAND, CATEGORY_NAME1, SUM(LINENET) FROM SALES
WHERE BRAND IS NOT NULL AND BRAND='ÜLKER'
GROUP BY BRAND, CATEGORYNAME_1
ORDER BY SUM(LINENET) DESC





--mağazalarımızın müşteri sayısını yazdırmak
--SELECT DISTINCT CLIENTNAME
--FROM SALES WHERE BRANCH='ADANA SUBESİ'  bilgileri getirme
SELECT BRANCH, COUNT(DISTINCT CLIENTNAME)
FROM SALES
GROUP BY BRANCH


--bir müşteri birden fazla şubeden alışveriş yaptıysa? bir müşterinin gittiği mağaza sayısı
SELECT CLIENTNAME, COUNT(DISTINCT BRANCH)
FROM SALES
WHERE CLIENTNAME='KEZBAN CİHANOGLU'
GROUP BY CLIENTNAME


--kişinin alışveriş yaptığı şubeler
SELECT DISTINCT BRANCH FROM SALES
WHERE CLIENTNAME='BLABLA'
  



--beşten fazla mağazadan alışveriş yapan müşteri sayısı
SELECT CLIENTNAME, COUNT (DISTINCT BRANCH)
FROM SALES 
GROUP BY CLIENTNAME
HAVING COUNT(DISTINCT BRANCH)>5
  




  
