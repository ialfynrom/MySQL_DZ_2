CREATE DATABASE HRD;

USE HRD;

CREATE TABLE rank 
(
	rank_id  INT AUTO_INCREMENT NOT NULL,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (rank_id)
);

CREATE TABLE employees
(
	employees_id INT AUTO_INCREMENT NOT NULL,
    rank_id INT NOT NULL,
	name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
    salary INT  NOT NULL,
	phone VARCHAR(15) NOT NULL,
    adress VARCHAR(30) NOT NULL,
	PRIMARY KEY (employees_id),
	FOREIGN KEY (rank_id) REFERENCES rank (rank_id)
);

