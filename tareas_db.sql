-- Eliminar la base de datos si ya existe  
DROP DATABASE IF EXISTS tareas_db;  

-- Crear una nueva base de datos  
CREATE DATABASE tareas_db;  

-- Usar la base de datos recién creada  
USE tareas_db;  

-- Crear la tabla de usuarios  
CREATE TABLE users (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    email VARCHAR(100) NOT NULL UNIQUE,  
    password VARCHAR(255) NOT NULL  
);  

-- Crear la tabla de tareas  
CREATE TABLE tasks (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    user_id INT NOT NULL,  
    text TEXT NOT NULL,  
    FOREIGN KEY (user_id) REFERENCES users(id)  
);