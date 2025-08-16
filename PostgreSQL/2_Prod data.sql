CREATE TABLE product(
prouct_id SERIAL PRIMARY KEY,
name TEXT NOT NULL,
sku_code char(4), 
price numeric(8,2) DEFAULT 0,
is_available boolean DEFAULT TRUE,
category TEXT NOT NULL,
added_on DATE DEFAULT current_date,
last_updated TIMESTAMP DEFAULT NOW()
);


INSERT INTO product(name, sku_code, price, is_available, category)
VALUES
('MOBILE', 'AA11', 12000.00, TRUE, 'ELECTRONIC'),
('LAPTOP', 'BB11', 82000.00, TRUE, 'ELECTRONIC'),
('MOBILE COVER', 'AA12', 200.00, TRUE, 'ACCESSORIES'),
('USB C-CABLE', 'AA13', 300.00, TRUE, 'ACCESSORIES'),
('SMART WATCH', 'CC11', 2000.00, TRUE, 'ELECTRONIC'),
('WASHING MACHINE', 'DD11', 62000.00, FALSE, 'ELECTRONIC'),
('DOUBLE DOOR FRIDGE', 'EE11', 18000.00, FALSE, 'ELECTRONIC'),
('LAPTOP STAND', 'BB12', 600.00, TRUE, 'ACCESSORIES'),
('EARBUDS', 'AB11', 2000.00, TRUE, 'ACCESSORIES'),
('SELF HELP BOOKS COMBO', 'EE11', 1000.00, TRUE, 'STATIONARY'),
('WATER BOTTLE', 'EF11', 400.00, TRUE, 'FITNESS'),
('PEN SET', 'EE12', 100.00, TRUE, 'STATIONARY'),
('YOGA MAT', 'EF12', 350.00, TRUE, 'FITNESS');

DROP TABLE product;

SELECT * FROM product; 

SELECT name, price, category FROM product;

SELECT * FROM product WHERE category = 'ELECTRONIC';

SELECT category  FROM product GROUP BY category; 

SELECT category, count(*) from product
group by category
HAVING COUNT(*) > 1;

SELECT name, price, category FROM product  ORDER BY PRICE ASC;
SELECT name, price, category FROM product where price > 10000 ORDER BY PRICE ASC;
SELECT name, category, price as new_price FROM product where price > 10000 ORDER BY PRICE ASC;

select distinct category from product;


SELECT * FROM product WHERE price > 10000 and is_available = 'false' order by price ASC

SELECT * FROM product WHERE price BETWEEN 400 AND 10000 ORDER BY price ASC


SELECT * FROM product WHERE category = 'STATIONARY' OR category = 'ACCESSORIES' OR category = 'FITNESS' 
--We can also write the previous query using IN like..
SELECT * FROM product WHERE category IN('STATIONARY', 'ACCESSORIES', 'FITNESS')


SELECT * FROM product WHERE sku_code LIKE 'A%'; -- first letter should be A and modulas(%) means anything after A 

SELECT name, price, category FROM product WHERE not category IN('ACCESSORIES', 'ELECTRONIC') ORDER BY price ASC 


