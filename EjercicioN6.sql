create table tp_integrador;
use tp_integrador;


CREATE TABLE `Dueno` (
  `dni` int NOT NULL PRIMARY KEY,
  `nombre` varchar(150) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `telefono` bigint NOT NULL,
  `direccion` varchar(200) NULL
);

CREATE TABLE `Historial` (
  `id_historial` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `fecha` datetime NOT NULL,
  `perro` int NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `monto` float NOT NULL
);

-- Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.


CREATE TABLE `Perro` (
  `id_perro` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nombre` varchar(150) NOT NULL,
  `fecha_nac` date NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `dni_dueno` int NOT NULL
);


ALTER TABLE `Perro`
ADD FOREIGN KEY (`dni_dueno`) REFERENCES `Dueno` (`dni`);

ALTER TABLE `Perro`
ADD FOREIGN KEY (`dni_dueno`) REFERENCES `Dueno` (`dni`) ON DELETE CASCADE;

ALTER TABLE `Historial`
ADD FOREIGN KEY (`perro`) REFERENCES `Perro` (`id_perro`) ON DELETE CASCADE;



-- Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

-- INSERTO REGISTROS EN TABLA DUEÑO Y PERRO 

INSERT INTO `Dueno` (`dni`, `nombre`, `apellido`, `telefono`, `direccion`)
VALUES 
('35030721', 'Juan ', 'Ledesma', '3625142973', 'Moro 409, resistencia, Chaco'),
('34365128', 'Pablo ', 'Espinoza', '36251111111','Pio XII 926, resistencia, Chaco'),
('123456', 'Pedro', 'Perez', '362544754654', 'Kjaskdj 7897, resistencia, Chaco');

INSERT INTO `Perro` (`nombre`, `fecha_nac`, `sexo`, `dni_dueno`)
VALUES 
('Tom', '2022-8-12', 'M', '35030721'),
('Nemo', '2022-8-12', 'M', '35030721'),
('Jerry', '2022-8-12', 'M', '34365128');


-- INSERTO REGISTROS EN LA TABLA HISTORIAL PARA PODER TRABAJAR/PROBAR


INSERT INTO `Historial` (`fecha`, `perro`, `descripcion`, `monto`)
VALUES 
('2022-03-15 15:35:00', '1', 'Peluqueria', '2000'),
('2021-04-07 15:35:00', '1', 'Peluqueria', '2000'),
('2020-10-20 15:35:00', '3', 'Peluqueria', '2000'),
('2022-01-15 15:35:00', '3', 'Peluqueria', '1000'),
('1995-12-20 15:35:00', '3', 'Peluqueria', '5000'),
(now(), '3', 'Peluqueria', '5000'),
('1990-03-15 15:35:00', '2', 'Clinica', '4000'),
('1990-03-15 15:35:00', '2', 'Clinica', '4000'),
('2021-08-29 15:35:00', '1', 'Clinica', '5000');


--  Obtener todos los perros que asistieron a la peluquería en 2022
select * from Historial