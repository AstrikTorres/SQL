/* Subconsultas
    Son consutlas que se realizan dentro de una consulta.    
*/

/* Consulta para saber que usuarios tienen entradas */
SELECT * FROM usuarios WHERE id IN (SELECT usuario_id FROM entradas);
/* representa los valores que recibe la consulta principal */
SELECT * FROM usuarios WHERE id IN (1,1,1,2,2,2,3,3,3); 

/* obtenemos los id de los usuarios  con entradas*/
SELECT usuario_id FROM entradas; 

/* Consulta equivalente con where */
SELECT * FROM usuarios WHERE id = 1 AND id = 2 AND id = 3;

/* Obtener los usuarios que tengan alguna entrada que el titulo tenga GTA */
SELECT nombre, apellidos FROM usuarios WHERE id IN (
    SELECT usuario_id FROM entradas WHERE titulo LIKE '%GTA%'
);


/* Obtener todas las entradas de la categoria de acción utilizando su nombre */
SELECT categoria_id, titulo FROM entradas WHERE categoria_id IN (
    SELECT id FROM categorias WHERE nombre = 'Acción'
);

/* Obtener las categorias sin entradas */
SELECT * FROM categorias WHERE id NOT IN (
    SELECT categoria_id FROM entradas
);

/* Obtener todas las categorias con entradas */
SELECT * FROM categorias WHERE id IN (
    SELECT categoria_id FROM entradas
);

/* Obtener todas las categorias con entradas ordenadas por nombre */
SELECT * FROM categorias WHERE id IN (
    SELECT categoria_id FROM entradas ORDER BY nombre
);

/* Mostar usuarios que crearon una entrada en un miercoles */
SELECT * FROM usuarios WHERE id IN (
    SELECT usuario_id FROM entradas WHERE DAYOFWEEK(fecha) = 4 /* la semana va de domingo a sabado */
);

/* Mostrar los apellidos de los usuarios que publicaron algo de deportes */
SELECT apellidos FROM usuarios WHERE id IN (
    SELECT usuario_id FROM entradas WHERE categoria_id IN (
        SELECT id FROM categorias WHERE nombre = 'Deportes'
    )
);