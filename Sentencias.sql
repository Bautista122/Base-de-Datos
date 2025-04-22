
Murder Mistery 

SELECT * FROM crime_scene_report WHERE date = 20180115 and type = "murder" and city = "SQL City"
SELECT * FROM person WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number desc limit 1 
SELECT * FROM person WHERE address_street_name = "Franklin Ave" and name like "Annabel%" 
SELECT * FROM interview
INNER JOIN person ON interview.person_id = person.id
WHERE person.name like 'annabel miller'

Peliculas 
SELECT f.title, a.address AS direccion, c.city, o.country
FROM film f
INNER JOIN inventory i 
ON f.film_id = i.film_id
INNER JOIN store s 
ON i.store_id = s.store_id 
INNER JOIN address a 
ON s.address_id = a.address_id
INNER JOIN city c 
ON a.city_id = c.city_id
INNER JOIN country o 
ON c.country_id = o.country_id
/////////////////////////////////

SELECT f.title, c.name, l.name, f.rating, f.rental_duration
FROM film f
INNER JOIN film_category b 
ON f.film_id = b.film_id
INNER JOIN category c 
ON b.category_id = c.category_id 
INNER JOIN language l
ON l.language_id = f.language_id
/////////////////////////////////

SELECT a.first_name, a.last_name, b.store_id, c.address, d.city, e.country
FROM staff a 
INNER JOIN  store b
ON a.store_id = b.store_id
INNER JOIN  address c
ON b.store_id = c.address_id
INNER JOIN  city d
ON c.address_id = d.city_id
INNER JOIN  country e
ON d.city_id = e.country_id
/////////////////////////////////

SELECT a.title, max(return_date), min(return_date)
FROM film a
INNER JOIN inventory b 
ON a.film_id = b.film_id
INNER JOIN  store c
ON b.store_id = c.store_id
INNER JOIN  address d
ON c.address_id = d.address_id
INNER JOIN  customer e
ON d.address_id = e.address_id
INNER JOIN  rental f
ON e.last_update = f.return_date
/////////////////////////////////

SELECT a.title, max(rental_duration), min(rental_duration) 
FROM film a 
//////////////////////////////////

le di a iniciar y me borro todo al querer traerme todas las tablas
//////////////////////////////////

SELECT count(*), rating from film
GROUP BY rating
//////////////////////////////////

SELECT count(*), c.name 
FROM film a  
INNER JOIN film_category b
ON a.film_id = b.film_id
INNER JOIN category c
ON b.category_id = c.category_id
GROUP BY name
//////////////////////////////////

SELECT count(*) AS cant_Actores, c.first_name
FROM film a  
INNER JOIN film_actor b
ON a.film_id = b.film_id
INNER JOIN actor c
ON b.actor_id = c.actor_id
GROUP BY c.actor_id
ORDER BY cant_Actores DESC limit 10
//////////////////////////////////

SELECT count(film_id), d.address, e.city, f.country   
FROM inventory b  
INNER JOIN  store c
ON b.store_id = c.store_id
INNER JOIN  address d
ON c.address_id = d.address_id
INNER JOIN  city e
ON d.city_id = e.city_id
INNER JOIN  country f
ON e.country_id = f.country_id
GROUP BY address
///////////////////////////////////

SELECT count(film_id), d.address, e.city, f.country   
FROM inventory b  
INNER JOIN  store c
ON b.store_id = c.store_id
INNER JOIN  address d
ON c.address_id = d.address_id
INNER JOIN  city e
ON d.city_id = e.city_id
INNER JOIN  country f
ON e.country_id = f.country_id
GROUP BY address
////////////////////////////////////

SELECT count(film_id), b.category, AVG(rental_duration*rental_rate)  
FROM film a   
INNER JOIN  film_category b
ON a.category_id = b.category_id
INNER JOIN inventory c
ON a.inventory_id = c.inventory_id
INNER JOIN rental d
ON c.inventory_id = d.inventory_id