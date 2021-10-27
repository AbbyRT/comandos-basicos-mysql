/*JOINS*/
/*Realiza uniones de tablas*/
SELECT * FROM actor, film_text;/*realiza mezcla de datos de tablas, pero entre ellos no hay relacion*/
/*Las tablas aqui no estan relacionadas :v*/

/*si relacionadas*/
SELECT * FROM actor, film_actor; /*los datos no esta ordenados aun, solo une registro por registro*/
/*a toda la ´rimera tabla le va a pegar el primer registro de la tabla 2, despues el segundo registro y asi...*/
SELECT COUNT(actor.actor_id) FROM actor, film_actor;
/*cuando manejo varias tablas, para especificar a cual me refiero usar tabla.columna deseada */

/*joins norepirte campos, solo los unen, consulta multitablas*/
SELECT city_id, city, country FROM city
INNER JOIN country ON city.country_id = country.country_id;
/*hay que undicar que union es la que se desea por ejemplo, que coincidan los country id de 
ambas tablas
Se esta haciendo una relacion entre tablas / fusión
1)que estoy consutando
2)tabla1 FROM...
3)con que tabla la quiero unir INNER JOIN...
4)especificar que ids deben ser equiparados, en este ejemplo: ON tabla1.campo a empatar = tabla2. campo a empatar*/
/*para usar esto las tablas deben estar relacionadas entre signal
Es posible unir mas de 2 tablas, hay que colocar un nuevo inner join*/

/*filtrar las peliculas por actores, poner el nombre de la pelcula y del actor*/
/*Recueprar:
film_id
first_name
last_name,
titulo de pelicula
--> un actor en especifico*/
/*filtrar peliculas por actores, en cuales peliculas ha participado el actor*/
SELECT film_actor.film_id, first_name, last_name, title FROM film_actor
INNER JOIN film ON film_actor.film_id = film.film_id
INNER JOIN actor ON film_actor.actor_id = actor.actor_id WHERE film_actor.actor_id=5;
/*para ver todos los actores solo hay que borrar el WHERE filom_actor.actor_ide=5*/
/*ordenados actores alfabticamente:*/
SELECT film.film_id, actor.first_name, actor.last_name, title 
FROM film
INNER JOIN film_actor ON film.film_id = film_actor.film_id
INNER JOIN actor ON actor.actor_id = film_actor.actor_id 
ORDER BY actor.first_name ASC;

