select * from product;

SELECT SUM(price) FROM product WHERE category IN ('FITNESS', 'ACCESSORIES') 

SELECT COUNT(category) FROM product WHERE category IN ('FITNESS', 'ACCESSORIES')



SELECT name, price FROM product WHERE price = (SELECT MIN(price) FROM product)

SELECT AVG(price) FROM product WHERE category IN ('ACCESSORIES', 'FITNESS');
SELECT round(AVG(price), 2) FROM product WHERE category IN ('ACCESSORIES', 'FITNESS')

SELECT lower(name) FROM product