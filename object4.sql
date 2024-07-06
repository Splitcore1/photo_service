-- Удаление существующей базы данных, если она существует
DROP DATABASE IF EXISTS object4;

-- Создание базы данных, если она еще не существует
CREATE DATABASE IF NOT EXISTS object4;
USE object4;

-- Создание таблицы пользователей, где вся информация хранится в JSON
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  data JSON
);

-- Вставка данных в таблицу пользователей в формате JSON
INSERT INTO users (data) VALUES 
(JSON_OBJECT('username', 'ADMIN', 'password', 'QWERTYq1w2e3r4')),
(JSON_OBJECT('username', 'Aleksandr', 'password', 'zxcv1q2w3e4r')),
(JSON_OBJECT('username', 'Misha', 'password', 'UJfd762Dl')),
(JSON_OBJECT('username', 'Alesha', 'password', 'NJfds7532hf')),
(JSON_OBJECT('username', 'Nikitos', 'password', 'LOL2019ww'));

-- Создание таблицы фотографий, где информация о фотографии хранится в JSON
CREATE TABLE photos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    details JSON,
    image_data LONGTEXT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

	