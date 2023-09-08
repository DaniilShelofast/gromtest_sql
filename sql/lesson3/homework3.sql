---Додавання даних.
insert orders(ID, PRODUCT_NAME, PRICE, DATE_ORDERED, DATE_CONFIRMED)
value (7, 'IPHONE 11 Pro Max', 1700, '2023-09-04', '2023-09-05');

insert orders(ID, PRODUCT_NAME, PRICE, DATE_ORDERED, DATE_CONFIRMED)
value (1, 'IPHONE 11 Pro Max', 1700, '2023-09-04', default);

insert orders(ID, PRODUCT_NAME, PRICE, DATE_ORDERED, DATE_CONFIRMED)
value (2, 'IPHONE 11 Pro Max X', 1900, '2023-09-04', '2023-09-05');

insert orders(ID, PRODUCT_NAME, PRICE, DATE_ORDERED, DATE_CONFIRMED)
value (43, 'IPHONE 11 Pro Max X', 1900, null, null);

insert orders(ID, PRODUCT_NAME, PRICE, DATE_ORDERED, DATE_CONFIRMED)
value (65, 'IPHONE 11 Pro Max X', 2100, default, null);

---Вибір даних.
SELECT PRICE, PRODUCT_NAME FROM orders;
SELECT PRODUCT_NAME AS Title FROM orders;
SELECT PRODUCT_NAME FROM orders;
SELECT DATE_CONFIRMED FROM orders;
SELECT PRICE FROM orders;

---Фільтрування даних.
SELECT * FROM orders
WHERE PRICE > 1000 AND PRODUCT_NAME = 'IPHONE 11';

SELECT * FROM orders
WHERE NOT PRICE > 1000;

SELECT * FROM test.orders
where PRODUCT_NAME = 'IPHONE 11 Pro Max' OR PRICE = 1200;

SELECT * FROM test.orders
where PRODUCT_NAME = 'IPHONE 11 Pro Max' AND  PRICE = 1200 OR PRICE = 1700;

SELECT * FROM test.orders
where not PRODUCT_NAME = 'IPHONE 11 Pro Max';

---Оновлення даних.
update orders
SET PRODUCT_NAME = 'IPHONE 11 Pro Max XS',
PRICE = PRICE + 100, DATE_CONFIRMED = '1999-09-06'
where PRODUCT_NAME = 'IPHONE 11 Pro Max X';

UPDATE orders
SET ID = 74
WHERE ID = 1;

update orders
SET PRODUCT_NAME = 'IPHONE 11 Pro Max X',
PRICE = PRICE + 100
where PRODUCT_NAME = 'IPHONE 11 Pro Max';

update orders
SET Price = Price + 3000
where PRICE = 1200;

UPDATE orders
SET ID = 3, PRICE = 100
WHERE ID = 3 AND PRICE = 11000;

---Видалення даних.
DELETE FROM orders
where PRODUCT_NAME = 'IPHONE 11 Pro Max X' OR  PRICE = 800;
SELECT * FROM orders;

DELETE FROM orders
where PRODUCT_NAME = 'IPHONE X Blue';
SELECT * FROM orders;

DELETE FROM orders
where PRODUCT_NAME = 'IPHONE 11 Pro Max X' AND  PRICE = 1900;
SELECT * FROM orders;

DELETE FROM orders
WHERE ID = 1;
SELECT * FROM orders;

DELETE FROM orders
where PRICE = 11000;
SELECT * FROM orders;
