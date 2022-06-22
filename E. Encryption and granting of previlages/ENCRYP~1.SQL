

/* two-way encryption */

SELECT ENCODE('hideme','pass');

SELECT DECODE('?<è+-O','pass');


/* one-way encryption */

SELECT MD5('secret');


/* encryption using the PASSWORD() function */

SELECT PASSWORD('opensesame');

SELECT PASSWORD('opensesame') = '2f3a61de16678aca';	# true