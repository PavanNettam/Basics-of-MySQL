
/* This is an example to demonstrate MySQL's handling of the date and time. */

SHOW DATABASES;

USE sample;

SHOW TABLES;

SELECT * FROM complaints;

DELETE FROM complaints;

ALTER TABLE complaints
ADD whenmade DATETIME NOT NULL;

SHOW COLUMNS FROM complaints;

INSERT INTO complaints (customerID, rage, details, whenmade)
VALUES (1, 2, "Failure to deliver", NOW());

SELECT * FROM complaints;

/* The other table types */

CREATE TABLE timedemo (
ts TIMESTAMP,
dt DATETIME,
d DATE,
t TIME,
y YEAR
);

INSERT INTO timedemo VALUES (NOW(), NOW(), NOW(), NOW(), NOW());

SELECT * FROM timedemo;

INSERT INTO timedemo (y) VALUES (45);

SELECT * FROM timedemo;

INSERT INTO timedemo (y) VALUES (71);

SELECT * FROM timedemo;

INSERT INTO timedemo (y) VALUES (2071);

SELECT * FROM timedemo;

/* Notice that the timestamp column is updating with the current
   date and time automatically, no need for NOW() .. the others
   remain null */


/* Date and time functions */

SELECT MONTHNAME(ts)
FROM timedemo;

SELECT WEEKDAY(ts)
FROM timedemo;

SELECT DATE_FORMAT(ts, '%W')
FROM timedemo;

SELECT DATE_FORMAT(ts, 'This is %W %D %M, AD%Y')
FROM timedemo;

