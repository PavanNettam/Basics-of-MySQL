
/* SQL Schema for library */


DROP DATABASE IF EXISTS library;

CREATE DATABASE library;

USE library;

CREATE TABLE books (
ISBN CHAR (10) NOT NULL,
title VARCHAR (60) NOT NULL,
publisher INT UNSIGNED NOT NULL,
pages SMALLINT UNSIGNED NOT NULL,
published YEAR NOT NULL,
genre TINYINT UNSIGNED NOT NULL,
comments TEXT,
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

INSERT INTO books VALUES ('0672317842', 'PHP and MySQL Web Development', 1, 867, 2001, 1, 'Excellent book for web developers');

INSERT INTO authors (firstname, surname) VALUES ('Luke', 'Welling');
INSERT INTO authors (firstname, surname) VALUES ('Laura', 'Thomson');

INSERT INTO publishers (name) VALUES ('Sams Publishing');

INSERT INTO book_authors VALUES (1, 1);
INSERT INTO book_authors VALUES (1, 2);

INSERT INTO genres (name) VALUES ('IT');
