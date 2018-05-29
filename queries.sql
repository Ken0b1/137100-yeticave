/*список категорий для объявлений*/
INSERT INTO category (name)
VALUES ('Доски и лыжи'), ('Крепления'), ('Ботинки'), ('Одежда'), ('Инструменты'), ('Разное');
/*список пользователей*/
INSERT INTO users (email, password)
VALUES ('petya@mail.ru', 'parol'),
       ('kolya@mail.ru', '123456');
/*список объявлений*/
INSERT INTO lot (start_price, category_id, img, title, author_id, creation_date)
VALUES (10999, 1, 'img/lot-1.jpg', '2014 Rossignol District Snowboard', 1, "2018-05-2 20:52:04"),

       (159999, 1, 'img/lot-2.jpg', 'DC Ply Mens 2016/2017 Snowboard', 1, "2018-04-28 20:52:04"),


       (8000, 2, 'img/lot-3.jpg', 'Крепления Union Contact Pro 2015 года размер L, XL', 1, "2018-03-25 20:52:04"),


       (10999, 3, 'img/lot-4.jpg', 'Ботинки для сноуборда DC Mutiny Charocal', 2, "2018-05-11 20:52:04"),


       (7500, 4, 'img/lot-5.jpg', 'Куртка для сноуборда DC Mutiny Charocal', 2, "2018-05-01 20:52:04"),


       (5400, 6, 'img/lot-6.jpg', 'Маска Oakley Canopy', 2, "2018-05-28 20:52:04");

/*ставки для объявлений*/
INSERT INTO bet (date, price, user_id, lot_id)
VALUES ("2018-05-28 20:52:04", 160999, 2, 2),
       ("2018-05-28 20:52:04", 11999, 2, 1);

/*запрос списка категорий*/
SELECT name FROM category;

/*запрос новые, открытые лоты. Каждый лот должен включать название, стартовую цену, ссылку на изображение, цену, количество ставок, название категории*/
SELECT
    lot.title,
    lot.start_price,
    lot.img,
    category.name,
    MAX(bet.price) price, 
    COUNT(bet.id) count_bet
FROM lot
INNER JOIN category ON lot.category_id = category.id 
LEFT JOIN bet ON bet.lot_id = lot.id
GROUP BY lot.id
ORDER BY lot.creation_date
LIMIT 3;

/*показать лот по его id. Получите также название категории, к которой принадлежит лот*/
SELECT
    lot.title,
    category.name,
    bet.price
FROM 
    lot, category, bet
WHERE
    lot.category_id = category.id AND bet.lot_id = lot.id;

/*обновить название лота по его идентификатору*/
UPDATE lot SET title = 'Черные крепления Union Contact Pro 2015 года размер L, XL'
WHERE lot_id = 3;

/*список самых свежих ставок для лота по его идентификатору*/
SELECT 
    lot.title, 
    bet.date 
FROM 
    lot,
    bet 
WHERE 
    bet.lot_id = lot.id AND lot.id = 2
ORDER BY 
    bet.date;
