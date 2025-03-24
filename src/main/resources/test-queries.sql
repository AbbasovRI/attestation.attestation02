-- Чтение данных
SELECT * FROM Товары WHERE стоимость > 10000;
SELECT * FROM Покупатели WHERE имя = 'Иван';
SELECT * FROM Заказы WHERE дата_заказа BETWEEN '2023-01-01' AND '2023-01-31';

-- Изменение данных
UPDATE Товары SET стоимость = 21000.50 WHERE id = 1;
UPDATE Покупатели SET фамилия = 'Сидоров' WHERE id = 1;
UPDATE Заказы SET количество_товаров = 4 WHERE id = 1;

-- Удаление данных
DELETE FROM Товары WHERE id = 10;
DELETE FROM Покупатели WHERE id = 10;
DELETE FROM Заказы WHERE id = 10;