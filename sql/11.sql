/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title in reverse alphabetical order.
 */
SELECT film.film_id, film.title, COUNT(inventory.inventory_id) FROM film
JOIN inventory ON film.film_id = inventory.film_id
GROUP BY film.film_id, film.title
HAVING film.title ILIKE 'H%'
ORDER BY film.title DESC;
