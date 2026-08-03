## 01_IMPORT DATA FOR customers TABLE
  
LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_customers_dataset.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

## 02_IMPORT DATA FOR orders TABLE

LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_orders_dataset.csv'
INTO TABLE orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

## 03_IMPORT DATA FOR order_items TABLE

LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_order_items_dataset.csv'
INTO TABLE order_items
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

## 04_IMPORT DATA FOR order_payments TABLE


LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_order_payments_dataset.csv'
INTO TABLE order_payments
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

## 05_IMPORT DATA FOR products TABLE

LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_products_dataset.csv'
INTO TABLE  products
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

## 06_IMPORT DATA FOR sellers TABLE

LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_sellers_dataset (1).csv'      
INTO TABLE sellers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

## 07_IMPORT DATA FOR geolocation TABLE 

LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/olist_ geolocation_dataset (1).csv'      
INTO TABLE  geolocation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

## 08_IMPORT DATA FOR category_translation TABLE 

LOAD DATA LOCAL INFILE 'C:/Users/Sameer/Documents/product_category_name_translation.csv'
INTO TABLE category_translation
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


