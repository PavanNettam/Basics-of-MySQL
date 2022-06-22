
/* Variables in MySQL */


SET @myname = "Josh";

SELECT @myname;

SELECT @cust := custID
FROM customers
WHERE firstname = "Pig";

DELETE FROM orders
WHERE custID = @cust;

DELETE FROM customers
WHERE custID = @cust;
