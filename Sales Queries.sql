create database supermarket_db;
show databases;
use supermarket_db;
create table sales(
invoice_id varchar(20),
branch varchar(5),
city varchar(50),
customer_type varchar(20),
gender varchar(10),
product_line varchar(50),
unit_price decimal(10,2),
quantity int,
tax_5_percent decimal(10,2),
total decimal(10,2),
date DATE,
time TIME,
payment varchar(20),
cogs decimal(10,2),
gross_margin_percentage decimal(10,2),gross_income decimal(10,2),
rating decimal(3,1)

);
describe sales;
select * from sales limit 5;
use supermarket_db;
SELECT COUNT(*) FROM sales;
SELECT * FROM sales LIMIT 10;
DROP TABLE sales;
CREATE TABLE sales (
    invoice_id VARCHAR(20),
    branch VARCHAR(5),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    product_line VARCHAR(50),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_5_percent DECIMAL(10,2),
    total DECIMAL(10,2),
    date DATE,
    time TIME,
    payment VARCHAR(20),
    cogs DECIMAL(10,2),
    gross_margin_percentage DECIMAL(10,2),
    gross_income DECIMAL(10,2),
    rating DECIMAL(3,1)
    
);
DESCRIBE sales;
SELECT * FROM sales LIMIT 10;
SELECT COUNT(*) FROM sales;

SHOW DATABASES;
USE supermarket_db;
SELECT DATABASE();
DROP TABLE IF EXISTS sales;
CREATE TABLE sales (
    invoice_id VARCHAR(20),
    branch VARCHAR(5),
    city VARCHAR(50),
    customer_type VARCHAR(20),
    gender VARCHAR(10),
    product_line VARCHAR(50),
    unit_price DECIMAL(10,2),
    quantity INT,
    tax_5_percent DECIMAL(10,2),
    total DECIMAL(10,2),
    date VARCHAR(20),
    time VARCHAR(20),
    payment VARCHAR(20),
    cogs DECIMAL(10,2),
    gross_margin_percentage DECIMAL(10,2),
    gross_income DECIMAL(10,2),
    rating DECIMAL(3,1)
);
DESCRIBE sales;

SELECT * FROM sales LIMIT 10; 
SELECT COUNT(*) FROM sales;



use supermarket_db;
SELECT city, SUM(total) AS revenue
FROM sales
GROUP BY city;


-- Total revenue
SELECT SUM(total) AS total_revenue
FROM sales;

-- Sales by city
SELECT city, SUM(total) AS revenue
FROM sales
GROUP BY city;

-- Top 5 product lines
SELECT product_line, SUM(total) AS revenue
FROM sales
GROUP BY product_line
ORDER BY revenue DESC
LIMIT 5;

-- Monthly sales
SELECT date, SUM(total) AS revenue
FROM sales
GROUP BY date;

-- Payment method usage
SELECT payment, COUNT(*) AS transactions
FROM sales
GROUP BY payment;


SELECT COUNT(*) FROM sales;
