
/* Examples of SET and ENUM column types */


/* ENUM: */

SHOW DATABASES;

USE sample;

ALTER TABLE complaints
CHANGE rage
rage ENUM ('polite', 'aggreived', 'irate', 'furious', 'abusive', 'threatening', 'apolopletic') NOT NULL;

INSERT INTO complaints (customerID, rage)
VALUES (1, 'irate');	# insert value: 'irate'

INSERT INTO complaints (customerID, rage)
VALUES (3, 1); 		# inserts value: 'polite'

INSERT INTO complaints (customerID, rage)
VALUES (2, 'happy');	# leaves column empty

SELECT * FROM complaints;	# view data

/* SET: */

ALTER TABLE products
ADD description SET ('hat', 'fairytale', 'starwars', 'scary') NOT NULL;

UPDATE products
SET description = ('hat')
WHERE productID = 1;	# inserts value: 'hat'

UPDATE products
SET description = ('camel')
WHERE productID = 11;	# leaves column empty

UPDATE products
SET description = ('hat,fairytale')
WHERE productID = 3;	# inserts values: 'hat, fairytale'

UPDATE products
SET description = (13)
WHERE productID = 10;	# inserts values: 'hat, starwars, scary'

SELECT * FROM products;		# view data

/* Joshua Mostafa 2002 */