/* SELECT COUNT: cuenta la cantidad de (titulos) por categoria en la tabla de entradas*/
/* AS 'Numero de entradas' cambia el nombre de la columna temporalmente, solo utilizado durante consulta */
SELECT COUNT(titulo) AS 'Número de entradas', categoria_id FROM entradas GROUP BY categoria_id;

/* Consulta agrupada con comdiciones */
/* HAVING: se utiliza para filtrar resultados (Sustituye a WHERE en este tipo de consultas) */
SELECT COUNT(titulo) AS 'Número de entradas', categoria_id FROM entradas GROUP BY categoria_id 
HAVING COUNT(titulo) >= 3; /* filtrar entradas con más de 3 entradas */

SELECT AVG(id) AS 'Promedio de id' FROM entradas; /* calcula el promedio de id de las entradas */ 
SELECT MAX(id) AS 'Maximo de id' FROM entradas; /* calcula el maximo id de las entradas */
SELECT SUM(id) AS 'Suma de id' FROM entradas; /* calcula la s+uma de id de las entradas */
SELECT MIN(id) AS 'Minimo de id' FROM entradas; /* calcula el minimo id de las entradas */
SELECT AVG(id) AS 'Promedio de id' FROM entradas WHERE id > 2; /* calcula el promedio de id de las entradas que tienen id mayor a 2 */