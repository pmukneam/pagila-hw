/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT title, sum(amount) AS profit FROM film JOIN inventory USING (film_id) JOIN rental using (inventory_id) JOIN payment using (rental_id) GROUP BY title ORDER BY profit DESC;
