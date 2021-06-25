-- Queries go here
-- SQL containing queries to extract the following data from your database tables:

-- Retrieve the first name, last name, and email address of all customers that have a Gmail email address.
select first_name, last_name, email
from customers 
where email ilike '%gmail.com';

-- Retrieve the address of the customers and the order IDs for all orders that were placed in 2020
select o.id, c.first_name, c.last_name, (a.*)
from adressess as a
join orders as o
on a.id = o.adressess_id
join customers as c
on c.id = o.customer_id
where o.date between '2020-01-01' and '2020-12-31';

-- Retrieve all product details for products that are under the "Kitchen" category
select *
from kitchens;

-- Retrieve the product names and prices of all products ordered by the customer with first name "Bugs" and last name "Bunny"
select c.first_name, c.last_name, k.name, k.price, pt.name, pt.price, pc.name, pc.price
from customers as c
join orders as o
on c.id = o.customer_id
join kitchens as k
on k.id = o.kitchen_id
join pool_tables as pt
on pt.id = o.pool_tables_id
join pool_cues as pc
on pc.id = o.pool_cues_id
where c.first_name = 'Bugs' and c.last_name = 'Bunny';



