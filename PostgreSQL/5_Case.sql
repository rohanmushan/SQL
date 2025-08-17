SELECT * FROM product;

SELECT name, price, 
CASE WHEN (price > 1000) THEN 'The Product is Expensive'
	 WHEN (price between 500 and 1000) THEN 'The Product is Moderate'
	 ELSE 'The Product is Cheap'
END AS price_tag FROM product;
--the above code is just a snapshot and data is not added in the original table to add that follow below steps

--Step 1
ALTER TABLE product
ADD COLUMN price_tag text;

--Step 2
UPDATE product
SET price_tag = 
CASE WHEN (price > 1000) THEN 'The Product is Expensive'
	 WHEN (price between 500 and 1000) THEN 'The Product is Moderate'
	 ELSE 'The Product is Cheap'
END;