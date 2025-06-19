-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS CineDB;
USE CineDB;

-- Tabla de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(100),
    telefono VARCHAR(20)
);

-- Tabla de Empleados
CREATE TABLE IF NOT EXISTS Empleados (
    id_empleado INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2),
    cargo VARCHAR(50)
);

-- Tabla de Salas
CREATE TABLE IF NOT EXISTS Salas (
    id_sala INT PRIMARY KEY,
    capacidad INT,
    tipo ENUM('2D', '3D', 'IMAX') -- o puedes usar VARCHAR si tu SGBD no soporta ENUM
);

-- Tabla de Películas
CREATE TABLE IF NOT EXISTS Peliculas (
    id_pelicula INT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracion INT, -- duración en minutos
    director VARCHAR(100),
    genero VARCHAR(50)
);

-- Tabla de Emisiones
CREATE TABLE IF NOT EXISTS Emisiones (
    id_emision INT PRIMARY KEY,
    horario TIME,
    fecha DATE,
    id_pelicula INT,
    id_sala INT,
    FOREIGN KEY (id_pelicula) REFERENCES Peliculas(id_pelicula),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);

-- Tabla de Entradas
CREATE TABLE IF NOT EXISTS Entradas (
    id_entrada INT PRIMARY KEY,
    precio DECIMAL(8,2),
    asiento VARCHAR(10),
    id_emision INT,
    FOREIGN KEY (id_emision) REFERENCES Emisiones(id_emision)
);

-- Tabla para relación N:N entre Clientes y Entradas
CREATE TABLE IF NOT EXISTS Clientes_Entradas (
    id_cliente INT,
    id_entrada INT,
    PRIMARY KEY (id_cliente, id_entrada),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    FOREIGN KEY (id_entrada) REFERENCES Entradas(id_entrada)
);

-- Tabla para relación N:N entre Empleados y Salas
CREATE TABLE IF NOT EXISTS Empleados_Salas (
    id_empleado INT,
    id_sala INT,
    PRIMARY KEY (id_empleado, id_sala),
    FOREIGN KEY (id_empleado) REFERENCES Empleados(id_empleado),
    FOREIGN KEY (id_sala) REFERENCES Salas(id_sala)
);

-- Insertar datos de ejemplo
INSERT INTO Clientes (id_cliente, nombre, apellido, correo, telefono) VALUES
(1, 'Ana', 'López', 'ana.lopez@email.com', '555-1234'),
(2, 'Carlos', 'Pérez', 'carlos.perez@email.com', '555-5678'),
(3, 'Lucía', 'Martínez', 'lucia.martinez@email.com', '555-9012');

INSERT INTO Empleados (id_empleado, nombre, apellido, salario, cargo) VALUES
(1, 'Jorge', 'Ramírez', 1200.00, 'Taquillero'),
(2, 'Marta', 'Gómez', 1500.00, 'Supervisor'),
(3, 'Luis', 'Torres', 1100.00, 'Asistente');

INSERT INTO Salas (id_sala, capacidad, tipo) VALUES
(1, 100, '2D'),
(2, 80, '3D'),
(3, 60, 'IMAX');

INSERT INTO Peliculas (id_pelicula, titulo, duracion, director, genero) VALUES
(1, 'Inception', 148, 'Christopher Nolan', 'Ciencia Ficción'),
(2, 'Coco', 105, 'Lee Unkrich', 'Animación'),
(3, 'Parasite', 132, 'Bong Joon-ho', 'Drama');

INSERT INTO Emisiones (id_emision, horario, fecha, id_pelicula, id_sala) VALUES
(1, '15:30:00', '2025-05-21', 1, 3),
(2, '18:00:00', '2025-05-21', 2, 1),
(3, '20:00:00', '2025-05-22', 3, 2);

INSERT INTO Entradas (id_entrada, precio, asiento, id_emision) VALUES
(1, 7.50, 'A1', 1),
(2, 7.50, 'A2', 1),
(3, 6.00, 'B1', 2),
(4, 6.00, 'B2', 2),
(5, 8.50, 'C1', 3);

INSERT INTO Clientes_Entradas (id_cliente, id_entrada) VALUES
(1, 1),
(2, 2),
(1, 3),
(3, 4),
(2, 5);

INSERT INTO Empleados_Salas (id_empleado, id_sala) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 1),
(3, 2);
