/*список категорий для объявлений*/
INSERT INTO category (name)
VALUES ('Доски и лыжи'), ('Крепления'), ('Ботинки'), ('Одежда'), ('Инструменты'), ('Разное');
/*список пользователей*/
INSERT INTO users (email, password)
VALUES ('petya@mail.ru', 'parol',);

INSERT INTO users (email, password)
VALUES ('kolya@mail.ru', '123456',);
/*список объявлений*/
INSERT INTO lot (start_price, category_id, img, title, author_id)
VALUES (10999, 1, 'img/lot-1.jpg', '2014 Rossignol District Snowboard');

INSERT INTO lot (start_price, category_id, img, title, author_id)
VALUES (159999, 1, 'img/lot-2.jpg', 'DC Ply Mens 2016/2017 Snowboard');

INSERT INTO lot (start_price, category_id, img, title, author_id)
VALUES (8000, 2, 'img/lot-3.jpg', 'Крепления Union Contact Pro 2015 года размер L, XL');

INSERT INTO lot (start_price, category_id, img, title, author_id)
VALUES (10999, 3, 'img/lot-4.jpg', 'Ботинки для сноуборда DC Mutiny Charocal');

INSERT INTO lot (start_price, category_id, img, title, author_id)
VALUES (7500, 4, 'img/lot-5.jpg', 'Куртка для сноуборда DC Mutiny Charocal');

INSERT INTO lot (start_price, category_id, img, title, author_id)
VALUES (5400, 6, 'img/lot-6.jpg', 'Маска Oakley Canopy');

/*ставки для объявлений*/
INSERT INTO bet (data, price, user_id, lot_id)
VALUES ();

INSERT INTO bet (data, price, user_id, lot_id)
VALUES ();

/*получить все категории*/
SELECT name FROM category;
