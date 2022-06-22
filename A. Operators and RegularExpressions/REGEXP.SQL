
/* Here are some examples of regular expression usage.
   All test stings are valid (query will return boolean TRUE: ie, 1). */


/* simple branching: the colours */

SELECT 'I got the blues'
REGEXP 'blue|grey|green|orange|purple|yellow|black|white|red';

/* basic email validation using regular expressions */

SELECT 'josh@mirtec.net'
REGEXP '^[A-Za-z0-9._]+@[A-Za-z0-9\-]+\.[A-Za-z0-9.\-]+$';

/* any email address at my domain */

SELECT 'x3ro@mirtec.net'
REGEXP '^[A-Za-z0-9._]+@mirtec.net$';

/* British postcodes */

SELECT 'BN1 6SJ'
REGEXP '^[A-Z]{1,2}[0-9]{1,2} [0-9][A-Z]{2}$';

/* Australian postcodes */

SELECT 'QLD 4854'
REGEXP '^(NSW|NT|SA|VIC|ACT|QLD|TAS|WA) [0-9]{4}$';



/* Joshua Mostafa 2002 */