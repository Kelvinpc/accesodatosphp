CREATE DATABASE veterinaria;

USE veterinaria;


CREATE TABLE propietarios(

  idpropietario     INT                       AUTO_INCREMENT PRIMARY KEY,
  apellidos         VARCHAR(40)               NOT NULL,
  nombres           VARCHAR(40)               NOT NULL

)ENGINE = INNODB;


CREATE TABLE mascotas(
  idmascota         INT                       AUTO_INCREMENT PRIMARY KEY,
  idpropietario     INT                       NOT NULL,
  tipo              ENUM('Perro', 'Gato')     NOT NULL,
  nombre            VARCHAR(40)               NOT NULL,
  color             VARCHAR(40)               NOT NULL,
  genero            ENUM('hembra','macho')    NOT NULL,
  vive              ENUM('si','no')           NOT NULL DEFAULT 'si',
  CONSTRAINT fk_idpropietario FOREIGN KEY (idpropietario) REFERENCES propietarios(idpropietario)
)ENGINE = INNODB;



INSERT INTO propietarios(apellidos, nombres) values
('Perez', 'Hugo'),
('Castilla','Teresa');

INSERT INTO mascotas(idpropietario, tipo, nombre, color, genero)VALUES
(1,'Perro', 'Firulais','negro','macho'),
(1,'Perro','Guerrero','marron','macho'),
(2,'Perro','Pelusa','blanco','hembra'),
(2,'Gato','Yager','blanco','macho')


UPDATE mascotas set
  idpropietario = 1,
  tipo = 'Gato',
  nombre = 'Matador',
  color = 'chocolate'


  select * from mascotas;


  SELECT 
    MA.idmascota,
    MA.tipo,
    MA.nombre,
    MA.color,
    MA.genero,
    CONCAT(PR.apellidos, ' ', PR.nombres) 'propietario'
    FROM mascotas MA
    INNER JOIN propietarios PR ON ma.idpropietario = PR.idpropietario;
    ORDER BY MA.nombre;

    