
/* Data aggregation */

SELECT surname, total
FROM customers INNER JOIN orders USING (custID);

/* Show the grand total of each customer's spending with the company */

SELECT surname, SUM(total)
FROM customers INNER JOIN orders USING (custID)
GROUP BY surname;

/* column aliases */

SELECT surname, SUM(total) AS grand_total
FROM customers INNER JOIN orders USING (custID)
GROUP BY surname
ORDER BY grand_total DESC;

/* show the biggest single order of each customer */

SELECT surname, MAX(total) AS biggest_order
FROM customers INNER JOIN orders USING (custID)
GROUP BY surname
ORDER BY biggest_order DESC;

/* show the average total of the orders of each customer */

SELECT surname, AVG(total) AS average_order
FROM customers INNER JOIN orders USING (custID)
GROUP BY surname
ORDER BY average_order DESC;

/* show the number of orders each customer has placed */

SELECT surname, COUNT(orderID) AS num_orders
FROM customers INNER JOIN orders USING (custID)
GROUP BY surname
ORDER BY num_orders DESC;

/* Joshua Mostafa 2002 */