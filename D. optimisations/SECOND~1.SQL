
/* Library database in second normal form */

CREATE TABLE books (
ISBN CHAR (10) NOT NULL,
title VARCHAR (60) NOT NULL,
publisher INT UNSIGNED NOT NULL,
pages SMALLINT UNSIGNED NOT NULL,
size ENUM ('brief', 'regular', 'epic'),
published YEAR NOT NULL,
genre TINYINT UNSIGNED NOT NULL,
PRIMARY KEY (ISBN)
);

CREATE TABLE authors (
ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
firstname CHAR (30) NOT NULL,
initial CHAR (1),
surname CHAR (30) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE publishers (
ID INT UNSIGNED NOT NULL AUTO_INCREMENT,
name CHAR (50) NOT NULL,
PRIMARY KEY (ID)
);

CREATE TABLE book_authors (
book CHAR(10) NOT NULL,
author INT UNSIGNED NOT NULL,
PRIMARY KEY (book, author)
);

CREATE TABLE genres (
ID TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
name CHAR (30) NOT NULL,
PRIMARY KEY (ID)
);




/* Sample data */

INSERT INTO books
VALUES ('0441569595', 'Neuromancer', 1,
	271, 'regular', 1984, 1);

INSERT INTO authors (firstname, surname)
VALUES ('William', 'Gibson');

INSERT INTO publishers (name)
VALUES ('Ace');

INSERT INTO book_authors
VALUES ('0441569595', 1);

INSERT INTO genres (name)
VALUES ('Science fiction');
