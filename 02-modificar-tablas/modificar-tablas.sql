/* Modificar tablas: ALTER TABLE */

/* Renombrar tablas */
ALTER TABLE usuarios RENAME TO usuarios_renom;

/* Renombrar la columna apellidos a apellido */
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(100) NULL;

/* NOT NULL indica que la columna no puede ser nula */
ALTER TABLE usuarios_renom MODIFY apellido CHAR(50) NOT NULL;

/* Añadir una columna a una tabla existente */
ALTER TABLE usuarios_renom ADD website VARCHAR(50) NULL;

/* Añadir uan restrincion de una columna a una tabla existente */
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email_password UNIQUE (email, password); /* Con dos campos */
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE (email); /* Con un campo (RECOMENDADO) */

/* Eliminar una restriccion de una columna a una tabla existente */
ALTER TABLE usuarios_renom DROP CONSTRAINT uq_email_password;

/* Eliminar columna */
ALTER TABLE usuarios_renom DROP WE
