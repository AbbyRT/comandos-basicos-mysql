/* podemks ejectuar consultas dentro de 
otras consultas*/
/* filtrar peliculas que sean de una
categoria */
/* WHERE IN: podemos pasar una lista de valores, pueden ir en el orden que sea, conviene cuando los numeros no sean secuenciales
cuando si sean se puede usa run between */
SELECT * FROM film WHERE film_id IN (1,2,3);
/* muestra los valores cn el id 1 2 y 3 */

/* es lo mismo que WHERE film_id = 1 OR film_id=2... */
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id = 5);
/* en el in se mandan los ids especificos de comedia id= 5 :v
Nota: hay una tabla intermedia donde convergen los id de categoria y id de pelicula */


/* filtrar peliculas por actores, en cuales peliculas ha participado el actor
 */
SELECT * FROM film WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id = 5);