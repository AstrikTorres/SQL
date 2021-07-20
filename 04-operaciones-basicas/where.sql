/* WHERE nos permite seleccionar elementos especificos de una tabla */
/*  OPERADORES DE COMPARACION:
    Igual           =
    Distinto        !=
    Menor           <
    Mayor           >
    Menor o igual   <=
    Mayor o igual   >=
    Entre           between A and B
    En              in
    Es nulo         is null
    No nulo         is not null
    Como            like
    No es como      not like
*/

/* selecciona el nombre y email del usuario con el id 4 */
SELECT nombre, email FROM usuarios WHERE id = 4;

/* selecciona todos los usuarios con el email astriktorres@gmail.com */
SELECT * FROM usuarios WHERE email = 'astriktorres@gmail.com';

/* selecciona todos los usuarios con un nombre que no sea 'Carlos Eduardo' */
SELECT * FROM usuarios WHERE nombre != 'Carlos Eduardo';

/* EJEMPLOS */

/* selecciona todos los usuarios con fecha en el año 2021 */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021'; 

/* selecciona todos los usuarios con fecha en el año 2020 Y 2021 */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2021' OR YEAR(fecha) = '2020';

/* selecciona todos los usuarios con fecha en el año 2019 o posterior */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) >= '2019'; 

/* Traer los usuarios que no se hayan registrado en 2020 */
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha); /* ISNULL devuelve true si la fecha es NULL */

/* Seleccionar registros por dos columnas */
SELECT nombre, apellidos FROM usuarios WHERE email = 'carlos@jesus.com' AND password = 'contraseña';

/* Elementos que contengan un texto
    % indica que se busca una parte del texto 
    Si el % va a la derecha del texto se busca en el final 
    si va despues del texto se busca en el inicio 
*/
SELECT * FROM usuarios WHERE nombre LIKE '%c%'; 