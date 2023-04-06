CREATE DATABASE STORE;

USE STORE;

CREATE TABLE employees
(
	employees_id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(30) NOT NULL,
    age INT NOT NULL,
	phone VARCHAR(15) NOT NULL,
    adress VARCHAR(30) NOT NULL,
	PRIMARY KEY (employees_id)
);

CREATE TABLE suppliers
(
	suppliers_id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(30) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	PRIMARY KEY (suppliers_id)
);

CREATE TABLE product
(
	product_id INT AUTO_INCREMENT NOT NULL,
	suppliers_id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    price INT  NOT NULL,
    quantity INT  NOT NULL,
    PRIMARY KEY (product_id),
    FOREIGN KEY (suppliers_id) REFERENCES suppliers(suppliers_id)
);

CREATE TABLE customers
(
	customers_id INT AUTO_INCREMENT NOT NULL,
	name VARCHAR(30) NOT NULL,
	phone VARCHAR(15) NOT NULL,
	adress VARCHAR(30) NOT NULL,
	PRIMARY KEY (customers_id)
);

CREATE TABLE orders
(
	orders_id  INT AUTO_INCREMENT NOT NULL,
    customers_id INT NOT NULL,
    product_id INT NOT NULL,
    name VARCHAR(30) NOT NULL,
    price INT  NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (customers_id) REFERENCES customers(customers_id),
	PRIMARY KEY (orders_id)
);

