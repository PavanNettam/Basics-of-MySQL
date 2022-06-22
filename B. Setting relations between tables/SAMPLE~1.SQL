

CREATE TABLE customers (
  custID smallint(5) unsigned NOT NULL auto_increment,
  firstname char(15) NOT NULL default '',
  surname char(15) NOT NULL default '',
  title char(10) NOT NULL default '',
  phone decimal(10,0) NOT NULL default '0',
  PRIMARY KEY (custID)
) 


INSERT INTO customers (custID,firstname,surname,title,phone) VALUES (1,'Jenny','Bonnet','Ms',12312312);
INSERT INTO customers (custID,firstname,surname,title,phone) VALUES (2,'Simon','Vesace','Mr',44444444);
INSERT INTO customers (custID,firstname,surname,title,phone) VALUES (3,'Billy','Whizz','Mr',88888888);
INSERT INTO customers (custID,firstname,surname,title,phone) VALUES (4,'Sneh','Gupta','Dr',11111111);
INSERT INTO customers (custID,firstname,surname,title,phone) VALUES (5,'John','Bull','Mr',55555555);
INSERT INTO customers (custID,firstname,surname,title,phone) VALUES (6,'Jacqueline','Dupont','Mlle',22222222);



CREATE TABLE order_items (
  orderID smallint(5) unsigned NOT NULL default '0',
  productID smallint(5) unsigned NOT NULL default '0',
  quantity tinyint(3) unsigned NOT NULL default '0'
) 


INSERT INTO order_items (orderID,productID,quantity) VALUES (1,1,1);
INSERT INTO order_items (orderID,productID,quantity) VALUES (1,2,1);
INSERT INTO order_items (orderID,productID,quantity) VALUES (2,4,2);
INSERT INTO order_items (orderID,productID,quantity) VALUES (3,2,1);
INSERT INTO order_items (orderID,productID,quantity) VALUES (4,3,3);
INSERT INTO order_items (orderID,productID,quantity) VALUES (5,1,1);
INSERT INTO order_items (orderID,productID,quantity) VALUES (6,2,2);
INSERT INTO order_items (orderID,productID,quantity) VALUES (7,3,5);
INSERT INTO order_items (orderID,productID,quantity) VALUES (7,7,5);



CREATE TABLE orders (
  orderID smallint(5) unsigned NOT NULL auto_increment,
  custID smallint(5) unsigned NOT NULL default '0',
  total decimal(6,2) NOT NULL default '0.00',
  orderdate date NOT NULL,
  PRIMARY KEY (orderID)
) 



INSERT INTO orders (orderID,custID,total,orderdate) VALUES (1,2,64.98,'2002-02-10');
INSERT INTO orders (orderID,custID,total,orderdate) VALUES (2,2,34.98,'2002-02-18');
INSERT INTO orders (orderID,custID,total,orderdate) VALUES (3,1,39.99,'2002-02-19');
INSERT INTO orders (orderID,custID,total,orderdate) VALUES (4,3,14.97,'2002-03-01');
INSERT INTO orders (orderID,custID,total,orderdate) VALUES (5,2,24.99,'2002-03-04');
INSERT INTO orders (orderID,custID,total,orderdate) VALUES (6,4,79.98,'2002-03-06');
INSERT INTO orders (orderID,custID,total,orderdate) VALUES (7,1,24.95,'2002-03-12');



CREATE TABLE products (
  productID smallint(5) unsigned NOT NULL auto_increment,
  price decimal(6,2) NOT NULL default '0.00',
  name char(20) NOT NULL default '',
  PRIMARY KEY (productID)
) 



INSERT INTO products (productID,price,name) VALUES (1,24.99,'Pelican mask');
INSERT INTO products (productID,price,name) VALUES (2,39.99,'Dracula cloak');
INSERT INTO products (productID,price,name) VALUES (3,4.99,'Princess\'s tiara');
INSERT INTO products (productID,price,name) VALUES (4,17.49,'Goblin suit');
INSERT INTO products (productID,price,name) VALUES (5,12.49,'Witch\'s hat');
INSERT INTO products (productID,price,name) VALUES (7,4.99,'Magic wand');
INSERT INTO products (productID,price,name) VALUES (8,14.99,'Dragon wings');

