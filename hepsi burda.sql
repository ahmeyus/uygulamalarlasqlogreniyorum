="INSERT INTO customer ([CUSTOMERNAME],[CITY],[DISTRICT],[BIRTHDATE],[GENDER]) VALUES ('"&A2&"','"&B2&"','"&C2&"','"&D2&"','"&E2&"')"
excelden çekerken kullandığımız kod.


AGE sütunu oluşturduktan sonra doğum tarihinden otomatik olarak yaş çekme
SELECT * FROM customer

UPDATE customer
SET AGE=DATEDIFF(year,BIRTHDATE,GETDATE())

SELECT * FROM CUSTOMER
WHERE CITY='Rize' AND DISTRICT='Derepazarı'

WHERE AGE BETWEEN 19 AND 25
WHERE CUSTOMERNAME LIKE 'AHMET%' adı ahmet olanlar
%AHMET sonu ahmet ile biter
%AHMET% içinde ahmet vardır

SELECT * FROM CUSTOMER
WHERE CITY='ISPARTA'
AND DISTRICT=('ULUBORLU','YALVAÇ')

SELECT * FROM CUSTOMER
WHERE CITY='ISPARTA'
AND DISTRICT NOT IN ('ULUBORLU','YALVAÇ')
AND GENDER='K'

DELETE FROM CUSTOMER
WHERE ID=1

DELETE FROM CUSTOMER WHERE CUSTOMERNAME LIKE 'SERHAT%'

UPDATE CUSTOMER SET GENDER='ERKEK' WHERE GENDER='E'
UPDATE customer SET GENDER='KADIN' WHERE GENDER='KADIN'
