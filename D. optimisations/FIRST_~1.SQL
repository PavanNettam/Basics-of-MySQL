
/* Library database in first normal form */

CREATE TABLE books (
title VARCHAR(60) NOT NULL,
publisher CHAR(50) NOT NULL,
pages SMALLINT UNSIGNED NOT NULL,
size ENUM ('brief', 'regular', 'epic'),
published YEAR NOT NULL,
genre CHAR(30),
author_firstname CHAR(30) NOT NULL,
author_initial CHAR(1),
author_surname CHAR(30) NOT NULL,
PRIMARY KEY(title, author_surname)
);


/* Sample data */

INSERT INTO books
VALUES ('Neuromancer', 'Ace', 271,
	'regular', 1984, 'Science fiction',
	'William', NULL, 'Gibson');
