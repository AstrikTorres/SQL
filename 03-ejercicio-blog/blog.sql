/* Crear base de datos */
CREATE DATABASE ejercicio01;
use ejercicio01;
/* Crear tablas */
CREATE TABLE usuarios(
   id          int NOT NULL AUTO_INCREMENT,
   nombre      varchar(100) NOT NULL,
   apellidos   varchar(100) NOT NULL,
   email       varchar(100) NOT NULL,
   password    varchar(100) NOT NULL,
   fecha       date NOT NULL,
   CONSTRAINT  pk_usuarios PRIMARY KEY (id),
   CONSTRAINT  uq_email UNIQUE (email)
);

CREATE TABLE categorias(
   id          int NOT NULL AUTO_INCREMENT,
   nombre      varchar(100) NOT NULL,
   CONSTRAINT  pk_categorias PRIMARY KEY (id)
);

CREATE TABLE entradas(
   id          int NOT NULL AUTO_INCREMENT,
   usuario_id  int NOT NULL,
   categoria_id int NOT NULL,
   titulo      varchar(200) NOT NULL,
   descripcion text,
   fecha       date NOT NULL,
   CONSTRAINT  pk_entradas PRIMARY KEY (id),
   CONSTRAINT  fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
   CONSTRAINT  fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);


/* Añadir uq y fk por modificacion de tabla

   Añadir restriccion a email de usuarios
   ALTER TABLE usuarios ADD CONSTRAINT uq_email UNIQUE (email);

   Añadir llaves foráneas a entradas
   ALTER TABLE entradas ADD FOREIGN KEY (id) REFERENCES usuarios(id);
   ALTER TABLE entradas ADD FOREIGN KEY (id) REFERENCES categorias(id); 
*/
