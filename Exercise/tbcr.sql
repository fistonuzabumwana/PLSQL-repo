CREATE TABLE PURCHASE (
  PURCHASE_ID INT PRIMARY KEY,
  PRODUCT_NAME VARCHAR(255),
  PRICE DECIMAL(10, 2),
  PURCHASE_DATE DATE,
  CUSTOMER_NAME VARCHAR(255),
  CUSTOMER_EMAIL VARCHAR(255),
  PAYMENT_METHOD VARCHAR(50)
);