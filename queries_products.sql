-- Comments in SQL Start with dash-dash --
INSERT INTO products (name, price, can_be_returned)
	VALUES 	('chair', 44.00, false); --Query 1
INSERT INTO products (name, price, can_be_returned)
	VALUES 	('stool', 25.99, true); --Query 2
INSERT INTO products (name, price, can_be_returned)
	VALUES 	('table', 124.00, false); --Query 3
SELECT * FROM products; --Query 4
SELECT name FROM products; --Query 5
SELECT name, price FROM products; --Query 6
INSERT INTO products (name, price, can_be_returned)
	VALUES 	('couch', 19.95, true); --Query 7
SELECT * from products where can_be_returned = true;--Query 8
SELECT * FROM products WHERE price < 44;--Query 9
SELECT * FROM products WHERE price < 99.99 and price> 22.50;--Query 10
DELETE FROM products WHERE price < 25;--Query 12
UPDATE products SET price = price+20;--Query 13
UPDATE products SET can_be_returned=true;--Query 14

