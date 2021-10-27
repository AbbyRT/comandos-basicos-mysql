/* count */
SELECT * FROM film WHERE rental_duration = 3;
SELECT COUNT(film_id) FROM film WHERE rental_duration = 3;
/* solpo aparece en total de datos que ucumplen la condicion 
es posible cambiar el nombre de la tabla resultado
por ejemplo, pasar de film id a total*/
SELECT rental_duration,COUNT(film_id) AS "total" FROM film WHERE rental_duration = 3;
/* aparecera lo sig:
rental_duration     total
3                   203
 */

/* group */
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration; /* aparecen desordenados */
/* mostrara cuantas peliculas duran 3, 4, 5...
rental_duration     total
3                   203
6                   20
5                   159
4                   125
 */
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration ASC;
/* ORDENA LOS DATOS DE RENTAL DURATION EN ORDEN ASCENDENTE
3, 4, 5, 6... */
SELECT rental_duration, COUNT(film_id) AS "Total" FROM film GROUP BY rental_duration ORDER BY rental_duration DESC;
/* los ordena en forma descendente */

/* obtener promedios */
SELECT AVG(replacement_cost) AS "Costo promedio" FROM film;
/* avg solo funciona con datos de tipo numerico */

/* suma de elementos */
SELECT SUM(replacement_cost) AS "Costo total de inventario" FROM film;

/* CONSULTAS PENDIENTES :v */
/* maximo, solo obtiene el numero mayor, pero no obtiene los datos asociados a ese valor
hace lo mismo min */
/* SELECT replacement_cost, title FROM MAX(replacement_cost) FROM film;

/* minimo */
/*SELECT *, MIN(replacement_cost) FROM film; */

/* max v2 */
/* se ordenan del mayor al menor
con LIMIT se indica el numero de registros a mostrar, en este caso 1 */
SELECT * FROM film ORDER BY replacement_cost DESC LIMIT 1;