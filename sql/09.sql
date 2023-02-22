/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name, sum(amount) FROM staff JOIN payment USING (staff_id) WHERE (payment_date <= '20200201') GROUP BY staff_id;
