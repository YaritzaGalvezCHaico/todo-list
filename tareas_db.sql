-- Crear la base de datos  
CREATE DATABASE tareas_db;  

-- Usar la base de datos  
USE tareas_db;  

-- Crear la tabla de usuarios  
CREATE TABLE users (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    email VARCHAR(255) NOT NULL UNIQUE,  
    password VARCHAR(255) NOT NULL,  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP  
);  

-- Crear la tabla de tareas  
CREATE TABLE tasks (  
    id INT AUTO_INCREMENT PRIMARY KEY,  
    user_id INT NOT NULL,  
    text VARCHAR(255) NOT NULL,  
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE  
);  

-- Insertar algunos usuarios de ejemplo  
INSERT INTO users (email, password) VALUES ('usuario1@example.com', 'password1');  
INSERT INTO users (email, password) VALUES ('usuario2@example.com', 'password2');  