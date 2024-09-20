USE SYS;

CREATE DATABASE BOOTCAMP_2409DAY1TRY;
USE BOOTCAMP_2409DAY1TRY;

CREATE TABLE TPRODUCTS(
	SKU int,
    PRODUCT_NAME VARCHAR(30),
    PRICE decimal(7,1),
    MANUFACTURE_DATE date
    );
SELECT * FROM TPRODUCTS;

INSERT INTO TPRODUCTS (SKU, PRODUCT_NAME, PRICE, MANUFACTURE_DATE)
	VALUES (24001, 'TRUE HEALTH NMN', 688, '2024-03-01');
INSERT INTO TPRODUCTS (SKU, PRODUCT_NAME, PRICE, MANUFACTURE_DATE)
	VALUES (24002, 'LIVER HEALTH', 388, '2024-05-01');
INSERT INTO TPRODUCTS (SKU, PRODUCT_NAME, PRICE, MANUFACTURE_DATE)
	VALUES (24003, 'KIDNEY RECOVER', 188, '2023-08-01');

-- TABLE WITH NULL VALUE:
INSERT INTO TPRODUCTS (SKU, PRODUCT_NAME, PRICE, MANUFACTURE_DATE)
	VALUES (24004, 'ANTI-AGING PRO', 288, NULL);
INSERT INTO TPRODUCTS (SKU, PRODUCT_NAME, PRICE, MANUFACTURE_DATE)
	VALUES (24005, 'BILBERRY PLUS', 168, NULL);
-- DELETE FROM TPRODUCTS;

-- ADD COLUMN IN PHYSICAL TABLE:
ALTER TABLE TPRODUCTS ADD PRODUCT_TYPE VARCHAR(20);
SELECT * FROM TPRODUCTS;

-- UPDATE FIELD VALUES:
UPDATE TPRODUCTS SET PRODUCT_TYPE = 'ANTI-AGING' WHERE SKU = 24001;
UPDATE TPRODUCTS SET PRODUCT_TYPE = 'DETOX' WHERE SKU = 24002;
UPDATE TPRODUCTS SET PRODUCT_TYPE = 'DETOX' WHERE SKU = 24003;
UPDATE TPRODUCTS SET PRODUCT_TYPE = 'ANTI-AGING' WHERE SKU = 24004;
UPDATE TPRODUCTS SET PRODUCT_TYPE = 'RECOVER' WHERE SKU = 24005;

-- SELECT DATA:
SELECT * FROM TPRODUCTS WHERE PRICE > 300;
SELECT * 
FROM TPRODUCTS 
WHERE PRODUCT_TYPE = 'ANTI-AGING'
AND PRICE > 500;

-- CALCULATE EXP DATE 
SELECT DATE_ADD(MANUFACTURE_DATE, INTERVAL 3 YEAR) AS EXP_DATE
	, P.SKU
    , P.PRODUCT_NAME
    , P.MANUFACTURE_DATE
FROM TPRODUCTS P;

-- SPECIAL PRICE IN SPECIFIC PRODUCT
SELECT SKU +'SPECIAL'
	, CONCAT (PRODUCT_NAME, 'SALE')
    , PRICE * 0.8
    FROM TPRODUCTS
    WHERE MANUFACTURE_DATE < '2024-01-01';
    
-- AGGREGATION FUNCTION + WHERE
SELECT AVG (PRICE)
FROM TPRODUCTS
WHERE PRODUCT_TYPE = 'ANTI-AGING';








    
    