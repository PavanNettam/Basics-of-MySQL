
/* These examples are to demonstrate MySQL's privilege system */

/* grant read-only privileges on the sample database to a user */

GRANT SELECT
ON sample.*
TO reader@localhost
IDENTIFIED BY 'secret';

/* grant read and write (but not delete) privileges on the customers table */

GRANT SELECT, UPDATE, INSERT
ON sample.customers
TO limited@localhost
IDENTIFIED BY 'pass';

/* grant global privileges to a power user */

GRANT ALL
ON *
TO god@heaven.org
IDENTIFIED BY 'yhwh';

/* grant global privileges plus the ability to confer these privelegs to other users */

GRANT ALL
ON *
TO om@shanti.net
IDENTIFIED BY 'bhakt'
WITH GRANT OPTION;

/* withdraw a user's write privileges but allow them to continue reading data */

REVOKE UPDATE, INSERT
ON sample.customers
FROM limited@localhost;




































