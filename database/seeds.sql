-- INSTERT DATA INTO STORE DB -> ADRESSESS
INSERT INTO adressess (customer_id, line_1, city, state, zipcode) 
VALUES (1, '10 DewDrop ln.', 'Afton', 'WY', '84321');
INSERT INTO adressess (customer_id, line_1, city, state, zipcode) 
VALUES (2, ' 324 Swift Creek Rd.', 'Houston', 'TX', '92138');
INSERT INTO adressess (customer_id, line_1, city, state, zipcode) 
VALUES (3, '303 Flounder Ln.', 'Tinkerton', 'NY', '32131');
INSERT INTO adressess (customer_id, line_1, city, state, zipcode) 
VALUES (4, '101 Eagle Dr.', 'CraneVille', 'ID', '43535');
INSERT INTO adressess (customer_id, line_1, city, state, zipcode) 
VALUES (5, ' 92 Bear Creek Rd.', 'Oscar Town', 'IL', '34525');

-- INSERT DATA INTO STORE DB -> CUSTOMERS
INSERT INTO customers (first_name, last_name, email, adressess_id) 
VALUES ('Bugs', 'Bunny', 'johnsmith@aol.com', 1);
INSERT INTO customers (first_name, last_name, email, adressess_id) 
VALUES ('Sally', 'Sasserton', 'sallysasserton@yahoo.com', 2);
INSERT INTO customers (first_name, last_name, email, adressess_id) 
VALUES ('Ankur', 'Hooman', 'ankurhooman@gmail.com', 3);
INSERT INTO customers (first_name, last_name, email, adressess_id)
VALUES ('Tom', 'Jerry', 'tomandjerry@gmail.com', 4);
INSERT INTO customers (first_name, last_name, email, adressess_id) 
VALUES ('Tiny', 'Tim', 'johnsmith@gmail.com', 5);

-- INSERT DATA INTO STORE DB -> CATEGORIES
INSERT INTO categories (name) 
VALUES ('pool tables');
INSERT INTO categories (name) 
VALUES ('pool cues');
INSERT INTO categories (name) 
VALUES ('kitchen');


-- ISNERT DATA INTO STORE DB -> PRODUCTS  
INSERT INTO products (name, price, category_id) 
VALUES ('some table', 10000, 1);
INSERT INTO products (name, price, category_id) 
VALUES ('spoon', 5000, 3);
INSERT INTO products (name, price, category_id) 
VALUES ('fork', 6000, 3);
INSERT INTO products (name, price, category_id) 
VALUES ('some cue', 3000, 2);
INSERT INTO products (name, price, category_id) 
VALUES ('knife', 2000, 3);

-- ISNERT DATA INTO STORE DB -> ORDERS
INSERT INTO orders (date, customer_id) 
VALUES ('2020-01-05', 1);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-02-10', 2);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-03-11', 3);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-03-11', 4);
INSERT INTO orders (date, customer_id) 
VALUES ('2020-04-13', 5);


--  INSERT DATA INTO STORE DB -> ORDER_PRODUCTS
INSERT INTO order_products (order_id, product_id, adressess_id) 
VALUES (1, 1, 1);
INSERT INTO order_products (order_id, product_id, adressess_id) 
VALUES (2, 2, 2);
INSERT INTO order_products (order_id, product_id, adressess_id) 
VALUES (3, 3, 3);
INSERT INTO order_products (order_id, product_id, adressess_id) 
VALUES (4, 2, 4);
INSERT INTO order_products (order_id, product_id, adressess_id) 
VALUES (5, 3, 5);