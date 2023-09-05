---Додавання даних.
INSERT orders(ID, PRODUCT_NAME, PRICE, DATE_ORDERED, DATE_CONFIRMED)
VALUE (7, 'IPHONE 11 Pro Max', 1700, '2023-09-04', '2023-09-05');

---Вибір даних.
SELECT PRICE, PRODUCT_NAME FROM orders;
SELECT PRODUCT_NAME AS Title FROM orders;

---Фільтрування даних.
SELECT * FROM orders
WHERE PRICE > 1000 AND PRODUCT_NAME = 'IPHONE 11';

SELECT * FROM orders
WHERE NOT PRICE > 1000;

---Оновлення даних.
UPDATE orders
SET ID = 74
WHERE ID = 1;

UPDATE orders
SET ID = 3, PRICE = 100
WHERE ID = 3 AND PRICE = 11000;

---Видалення даних.
DELETE FROM orders
WHERE ID = 1;
SELECT * FROM orders;

DELETE FROM orders
where PRICE = 11000;
SELECT * FROM orders;
