
/* Joining tables - example SELECT queries */

USE sample;

/* Inner join */

SELECT customers.surname, orders.orderdate
FROM customers, orders
WHERE customers.custID = orders.custID;

/* Left join */

SELECT customers.surname, orders.orderdate
FROM customers LEFT JOIN orders ON customers.custID = orders.custID;

/* Alternative syntax for inner join */

SELECT customers.surname, orders.orderdate
FROM customers INNER JOIN orders ON customers.custID = orders.custID;

/* Another syntax for inner join */

SELECT customers.surname, orders.orderdate
FROM customers INNER JOIN orders USING (custID);

/* Table aliases */

SELECT c.surname, o.orderdate
FROM customers c, orders o
WHERE c.custID = o.custID;

/* Joshua Mostafa 2002 */