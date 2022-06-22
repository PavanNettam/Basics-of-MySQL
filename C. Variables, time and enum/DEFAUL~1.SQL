
/* This just shows how to use the DEFAULT column attribute
   to set a default value for data within a column */

/* Find a column to try this out on */

SHOW DATABASES;

USE sample;

SHOW TABLES;

SHOW COLUMNS FROM products;

/* The mask is entered with price of zero */

INSERT INTO products (name) VALUES ("Darth Vader mask");

SELECT * FROM products;

/* Add a default value to the price column */

ALTER TABLE products
CHANGE price price DECIMAL (6, 2) NOT NULL DEFAULT 10;

SHOW COLUMNS FROM products;

INSERT INTO products (name) VALUES ("Light sabre");

SELECT * FROM products;

/* Entering data into the price column overrides the default */

INSERT INTO products (name, price) VALUES ("Bobba Fet suit", 64.49);

SELECT * FROM products;

/* Of course, the default value can be set when creating a table, also ...

   Create the table: */

CREATE TABLE complaints (
complaintID SMALLINT NOT NULL AUTO_INCREMENT,
customerID SMALLINT NOT NULL,
rage TINYINT NOT NULL DEFAULT 10,
details CHAR(50) NOT NULL DEFAULT "Another whinger",
PRIMARY KEY (complaintID)
);

/* Insert some test data: */

INSERT INTO complaints (customerID)
VALUES (3);

/* See the result: */

SELECT * FROM complaints;
