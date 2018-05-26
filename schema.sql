CREATE DATABASE YetiCave
	DEFAULT CHARACTER SET urf8
	DEFAULT COLLATE urf8_genereal_ci;
	
USE YetiCave;

CREATE TABLE category (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name_cat VARCHAR(32)
);

CREATE TABLE lot (
	id INT AUTO_INCREMENT PRIMARY KEY,
	creation_date DATETIME,
	title VARCHAR(128),
	description TEXT,
	img VARCHAR(128),
	start_price DECIMAL,
	completion_date DATETIME,
	step_rate INT
);

CREATE TABLE bet (
	id INT AUTO_INCREMENT PRIMARY KEY,
	data DATETIME,
	price DECIMAL
);

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(128),
	password CHAR(64),
	reg_data DATETIME,
	user_name VARCHAR(64),
	avatar VARCHAR(128),
	contacts VARCHAR(128)
);

CREATE UNIQUE INDEX email ON users(email);

CREATE INDEX title ON lot(title);
CREATE INDEX description ON lot(description);
