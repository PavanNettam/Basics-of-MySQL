
/* Library database, not normalised */

CREATE TABLE books (
title VARCHAR(60) NOT NULL,
publisher CHAR(50) NOT NULL,
pages SMALLINT UNSIGNED NOT NULL,
size ENUM ('brief', 'regular', 'epic'),
published YEAR NOT NULL,
genre CHAR(30),
author_name CHAR(30) NOT NULL
);


/* Sample data */

INSERT INTO books
VALUES ('Neuromancer', 'Ace', 271, 'regular', 1984,
	'Science fiction', 'William Gibson');
