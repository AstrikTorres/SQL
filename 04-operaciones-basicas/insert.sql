/* INSERTAR VALORES EN UNA TABLA */
INSERT INTO usuarios VALUES(NULL, 'Astrik Sem', 'Torres Garcia', 'astriktorres@gmail.com', 'root', '2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Carlos Eduardo', 'Jesus Leon', 'carlos@jesus.com', 'contraseña', '2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Cesar', 'Chavez', 'cesar@chavez.com', 'admin123',  '2021-07-20');

/* INSERTAR DATOS EN CIERTAS COLUMNAS */
INSERT INTO usuarios(fecha, password, nombre, apellidos, email) VALUES ('2021-07-20', '123456', 'Juan', 'Diaz', 'juan@diaz.com');