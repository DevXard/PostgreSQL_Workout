-- Comments in SQL Start with dash-dash --
-- Add chair
INSERT INTO products (name, price, can_be_returned) VALUES ('chair', 44.00, false);
-- Add stool
INSERT INTO products (name, price, can_be_returned) VALUES ('stool', 25.99, true); 
-- Add table
INSERT INTO products (name, price, can_be_returned) VALUES ('table', 124.00, false); 
-- Display all coloms and Rows
SELECT * FROM products;
-- Display all of the names of the products
SELECT name FROM products;
-- Display all of the names and prices
SELECT name, price FROM products;
-- Add one more product by choice
INSERT INTO products (name, price, can_be_returned) VALUES ('Bed', 549.00, true);
-- Display products that can be returned
SELECT * FROM products WHERE can_be_returned;
-- Display products with price less then 44
SELECT * FROM products WHERE price < 44.00;
-- Display products with price betwean 22.50 and 99.99
SELECT * FROM products WHERE price BETWEEN 22.50 and 99.99;
-- SALE everything is  20$ less Updating Table
UPDATE products SET price = price - 20;
-- Delete all products under $25
DELETE FROM products WHERE price < 25;
-- SALE is over Increase Price $20
UPDATE products SET price = price + 20;
-- Eerything is returnable 
UPDATE products SET can_be_returned = true;