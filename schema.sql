CREATE DATABASE YetiCave
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;
	
USE YetiCave;

CREATE TABLE category (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(32)
);

CREATE TABLE lot (
	id INT AUTO_INCREMENT PRIMARY KEY,
	creation_date DATETIME,
	title VARCHAR(128),
	description TEXT,
	img VARCHAR(128),
	start_price float,
	completion_date DATETIME,
	step_rate INT,
    author_id INT, 
    category_id INT,
    winner_id INT
);

CREATE TABLE bet (
	id INT AUTO_INCREMENT PRIMARY KEY,
	date DATETIME,
	price float,
    user_id INT,
    lot_id INT
);

CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(128),
	password VARCHAR(64),
	reg_data DATETIME,
	user_name VARCHAR(64),
	avatar VARCHAR(128),
	contacts VARCHAR(128)
);

CREATE UNIQUE INDEX email ON users(email);

CREATE INDEX title ON lot(title);
CREATE FULLTEXT INDEX description ON lot(description);
ALTER TABLE lot ADD FOREIGN KEY (author_id) REFERENCES users(id);
ALTER TABLE lot ADD FOREIGN KEY (category_id) REFERENCES category(id);
ALTER TABLE lot ADD FOREIGN KEY (winner_id) REFERENCES users(id);
ALTER TABLE bet ADD FOREIGN KEY (user_id) REFERENCES users(id);
ALTER TABLE bet ADD FOREIGN KEY (lot_id) REFERENCES lot(id);