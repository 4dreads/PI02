sql

USE SiniestrosViales;

CREATE TABLE SiniestrosViales_Homicidios (
    ID INT PRIMARY KEY,
    N_VICTIMAS INT,
    FECHA DATE,
    AAAA INT,
    MM INT,
    DD INT,
    HORA TIME,
    HH INT,
    LUGAR_DEL_HECHO VARCHAR(255),
    TIPO_DE_CALLE ENUM('calle', 'avenida', 'autopista', 'general_paz'),
    Calle VARCHAR(255),
    Altura INT,
    Cruce VARCHAR(255),
    Direccion_Normalizada VARCHAR(255),
    COMUNA INT,
    XY_CABA POINT,
    PARTICIPANTES VARCHAR(255),
    VICTIMA ENUM('PEATON', 'MOTO', 'AUTO', 'CARGAS', 'BICICLETA', 'PASAJEROS', 'MOVIL', 'OTRO', 'SD'),
    ACUSADO ENUM('AUTO', 'BICICLETA', 'CARGAS', 'MOTO', 'OBJETO FIJO', 'PASAJEROS', 'TREN', 'OTRO', 'SD')
);

INSERT INTO SiniestrosViales_Homicidios (
     ID, N_VICTIMAS, FECHA, AAAA, MM, DD, HORA, HH, LUGAR_DEL_HECHO, 
     TIPO_DE_CALLE, Calle, Altura, Cruce, Direccion_Normalizada, COMUNA, 
     XY_CABA, PARTICIPANTES, VICTIMA, ACUSADO
 ) VALUES
 (1, 2, '2016-01-01', 2016, 1, 1, '12:30:00', 12, 'Av. Rivadavia 123', 'avenida', 'Av. Rivadavia', 123, 'Av. Callao', 'Normalizada', 5, POINT(-58.400, -34.600), 'MULTIPLE', 'AUTO', 'BICICLETA'),
 (2, 1, '2017-02-02', 2017, 2, 2, '15:45:00', 15, 'Calle Corrientes 456', 'calle', 'Calle Corrientes', 456, 'Calle Florida', 'Normalizada', 1, POINT(-58.385, -34.609), 'SD', 'PEATON', 'AUTO'),
 (3, 3, '2018-03-03', 2018, 3, 3, '08:00:00', 8, 'Autopista Buenos Aires-La Plata', 'autopista', 'AU Buenos Aires-La Plata', 0, '', 'Normalizada', 4, POINT(-58.388, -34.643), 'MULTIPLE', 'CARGAS', 'AUTO'),
 (4, 1, '2019-04-04', 2019, 4, 4, '18:20:00', 18, 'Avenida Santa Fe 789', 'avenida', 'Av. Santa Fe', 789, 'Av. Córdoba', 'Normalizada', 3, POINT(-58.422, -34.593), 'SD', 'MOTO', 'AUTO'),
 (5, 2, '2020-05-05', 2020, 5, 5, '09:15:00', 9, 'Calle Maipú 234', 'calle', 'Maipú', 234, 'Calle Paraná', 'Normalizada', 9, POINT(-58.374, -34.604), 'MULTIPLE', 'AUTO', 'MOTO'),
 (6, 1, '2021-06-06', 2021, 6, 6, '14:00:00', 14, 'Autopista 25 de Mayo Km 10', 'autopista', 'AU 25 de Mayo', 10, '', 'Normalizada', 7, POINT(-58.408, -34.678), 'SD', 'PEATON', 'AUTO')
