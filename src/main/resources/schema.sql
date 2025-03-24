-- Таблица Товар
CREATE TABLE IF NOT EXISTS Товары (
    id SERIAL PRIMARY KEY,
    описание VARCHAR(255),
    стоимость NUMERIC(10, 2),
    количество INTEGER CHECK (количество >= 0)
);

COMMENT ON TABLE Товары IS 'Таблица хранит информацию о товарах';

-- Таблица Покупатель
CREATE TABLE IF NOT EXISTS Покупатели (
    id SERIAL PRIMARY KEY,
    имя VARCHAR(100),
    фамилия VARCHAR(100)
);

COMMENT ON TABLE Покупатели IS 'Таблица хранит информацию о покупателях';

-- Таблица Заказы
CREATE TABLE IF NOT EXISTS Заказы (
    id SERIAL PRIMARY KEY,
    id_товара INTEGER REFERENCES Товары(id),
    id_заказчика INTEGER REFERENCES Покупатели(id),
    дата_заказа TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    количество_товаров INTEGER CHECK (количество_товаров > 0)
);

COMMENT ON TABLE Заказы IS 'Таблица хранит информацию о заказах покупателей';

-- Заполняем таблицу Товары
INSERT INTO Товары (описание, стоимость, количество) VALUES
('Телефон', 20000.50, 15),
('Ноутбук', 70000.99, 20),
('Клавиатура', 1500.75, 30),
('Монитор', 25000.25, 12),
('Наушники', 3000.90, 40),
('Микрофон', 800.45, 35),
('Мышь', 500.60, 23),
('Планшет', 18000.55, 18),
('Камера', 12000.80, 22),
('Роутер', 4000.95, 28);

-- Заполняем таблицу Покупатели
INSERT INTO Покупатели (имя, фамилия) VALUES
('Иван', 'Иванов'),
('Петр', 'Петров'),
('Сергей', 'Сергеев'),
('Анна', 'Анненкова'),
('Елена', 'Еленина'),
('Дмитрий', 'Дмитриев'),
('Ольга', 'Олегова'),
('Михаил', 'Михайлов'),
('Марина', 'Маринова'),
('Андрей', 'Андреев');

-- Заполняем таблицу Заказы
INSERT INTO Заказы (id_товара, id_заказчика, дата_заказа, количество_товаров) VALUES
(1, 1, '2023-01-05', 2),
(2, 2, '2023-01-07', 3),
(3, 3, '2023-01-09', 1),
(4, 4, '2023-01-11', 2),
(5, 5, '2023-01-13', 1),
(6, 6, '2023-01-15', 3),
(7, 7, '2023-01-17', 2),
(8, 8, '2023-01-19', 1),
(9, 9, '2023-01-21', 2),
(10, 10, '2023-01-23', 3);