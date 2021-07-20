
/* Crear tabla: CREATE TABLE */

CREATE TABLE usuarios(
id          int AUTO_INCREMENT NOT NULL,
nombre      VARCHAR(50) NOT NULL,
apellidos   VARCHAR(50) NOT NULL,
email       VARCHAR(50) NOT NULL,
password    VARCHAR(50) NOT NULL,
CONSTRAINT pk_usuarios PRIMARY KEY(id)
);
