/* seleccionar por id 
verificar como se llama la variable, peude qye
no se llame id*/
SELECT * FROM actor WHERE actor_id = 8;
/*
OPERADORES DE COMPARACION:
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

/* seleccionar por id mayor a un numero */
SELECT * FROM actor WHERE actor_id > 63;
/* apareceran a partir del ide 64 */
SELECT * FROM actor WHERE actor_id >=63;
SELECT * FROM actor WHERE actor_id != 8;/* se brinca el  id 8 */
SELECT * FROM actor WHERE actor_id < 8;/* muestra registros hasta id 7 */
/* nos permite seleccionar entre un rango de elementos */
SELECT * FROM actor WHERE actor_id BETWEEN 10 AND 20;/* muestra desde id 10 hasta id 20 */
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id >63;
/* muestra varias columnas en ese orden que cumpla la condicion */
/* seleccionar elementos con id pares, es posible aplica un poco de logica a las consulas */
SELECT * FROM actor WHERE actor_id % 2 = 0;
/*
OPERADORES LOGICOS:
O       OR
Y       AND
NO      NOT
*/
/* OPERADOR AND */
SELECT * FROM actor WHERE first_name ='CHRIS' AND actor_id>50;

/*
COMODINES: buscar por algun caracter o frase en especifico
se usa % y LIKE
Cualquier cantidad de caracteres: %
Un caracter desconocido: _
*/
/* buscar todos los actores cuyo nombre termine con A 
si se pone el porcentaje al final, se indica que se necesitan todas
las palabras que empiecen con A
a%
*/
SELECT * FROM actor WHERE first_name LIKE "%a";/* que termine con a */
SELECT * FROM actor WHERE first_name LIKE "a%";/* que empieze con a */
SELECT * FROM actor WHERE first_name LIKE "%a%";/* que tenga a en cualquier punto */
SELECT * FROM actor WHERE first_name LIKE "%an%" OR last_name LIKE "e%";/*uso de operador or*/

