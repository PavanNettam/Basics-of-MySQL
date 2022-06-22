
/* VTC's training guide to MySQL: Chapter 4: 'Operators' */

/* examples of arithmetic operators */

SELECT 2 + 2;

SELECT 2 - 2;

SELECT 9 / 3;

SELECT 4 * 3;

SELECT 10 % 3;

SELECT 10 % 2;

/* examples of numeric comparison operators */

SELECT 2 = 2;			# true

SELECT 2 = 3;			# false

SELECT 2 < 4;			# true

SELECT 2 > 1;			# true

SELECT 2 < 2;			# false

SELECT 2 <= 2;			# true

SELECT 2 >= -3;			# true

SELECT 2 != 4;			# true

SELECT 2 != 2;			# false

SELECT 3 = NULL;		# null

SELECT 3 <=> NULL;		# false

SELECT NULL <=> NULL;		# true

SELECT NULL = NULL;		# null

/* examples of string comparison operators */

SELECT 'cat' = 'cat';		# true

SELECT 'cat' LIKE 'cat';	# true

SELECT 'cat' LIKE '_at';	# true

SELECT 'cat' LIKE '___';	# true

SELECT 'cat' LIKE '_';		# false

SELECT 'cat' LIKE '%';		# true

SELECT 'cat' LIKE '%c%';	# true

/* examples of logical operators */

SELECT 1 = 1 && 2 = 2;		# true

SELECT 1 = 1 AND 2 = 2;		# true (alternative syntax)

SELECT 1 = 1 && 2 = 3;		# false

SELECT 1 = 1 || 2 = 3;		# true

SELECT 1 = 1 OR 2 = 3;		# true (alternative syntax)

SELECT 1 = 1 || 2 = 3;		# true

SELECT 1 = 2 || 2 = 3;		# false

SELECT !(1 = 1);		# false

SELECT NOT (1 = 1);		# false (alternative syntax)

SELECT !(1 = 30);		# true

/* examples of binary operators */

SELECT 1 | 3;			# 3 (compares binary 01 and 11: returns binary 11)

SELECT 1 & 3;			# 1 (compares binary 01 and 11: returns binary 01)

SELECT 1 & 2;			# 0 (compares binary 01 and 10: returns binary 00)

SELECT 1 & 2;			# 3 (compares binary 01 and 10: returns binary 11)

SELECT 1 << 4;

SELECT 16 >> 4;

/* Joshua Mostafa 2002 */