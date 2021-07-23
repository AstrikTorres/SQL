/* JOINS nos permite fusionar información entre tablas */

/* Mostrar las entradas con el nombre del autor(usuarios) y de la categoria */
SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre
FROM entradas
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id
INNER JOIN categorias ON entradas.categoria_id = categorias.id;

SELECT e.id, e.titulo, u.nombre, c.nombre
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categoria_id = c.id;

/* Obtener el numero de entradas de categorias */
SELECT c.nombre, COUNT(e.id) FROM categorias c
INNER JOIN entradas e ON e.categoria_id = c.id
GROUP BY e.categoria_id; 
/* El GROUP BY es necesario para obtener el numero de entradas de cada categoria 
    Agrupa las entradas por categoria y obtiene el numero de entradas de cada categoria
*/

/* LEFT JOIN:
    Devuelve todos los registros de la tabla de la izquierda y los registros coincidentes de la tabla de la derecha. 
*/
SELECT c.nombre, COUNT(e.id) FROM categorias c
LEFT JOIN entradas e ON e.categoria_id = c.id 
GROUP BY e.categoria_id;