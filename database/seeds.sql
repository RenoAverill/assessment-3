-- Seed data goes here-- INSERT DATA INTO STORE DB -> KITCHENS
INSERT INTO kitchens (name, brand, color, size, price) 
VALUES ('alright stuff', 'value_brand', 'white', 'L', 3000);
INSERT INTO kitchens (name, brand, color, size, price) 
VALUES ('cool stuff', 'expensive_brand', 'black', 'M', 10000);
INSERT INTO kitchens (name, brand, color, size, price) 
VALUES ('ehh stuff', 'value_brand', 'blue', 'S', 2000);
INSERT INTO kitchens (name, brand, color, size, price) 
VALUES ('cool stuff', 'expensive_brand', 'yellow', 'L', 9500);
INSERT INTO kitchens (name, brand, color, size, price) 
VALUES ('mehh stuff', 'middleton_brand', 'pink', 'L', 5500);

-- ISNERT DATA INTO STORE DB -> POOL_TABLES
INSERT INTO pool_tables (name, brand, color, size, price) 
VALUES ('the best stuff', 'spendy_brand', 'white', 'L', 10000);
INSERT INTO pool_tables (name, brand, color, size, price) 
VALUES ('alright stuff', 'okok_brand', 'black', 'S', 5000);
INSERT INTO pool_tables (name, brand, color, size, price) 
VALUES ('alright stuff', 'okok_brand', 'purple', 'M', 6000);
INSERT INTO pool_tables (name, brand, color, size, price) 
VALUES ('the worst stuff', 'eww_brand', 'magenta', 'L', 3000);
INSERT INTO pool_tables (name, brand, color, size, price) 
VALUES ('the worst stuff', 'eww_brand', 'green', 'M', 2000);

-- ISNERT DATA INTO STORE DB -> POOL_CUES
INSERT INTO pool_cues (name, brand, color, size, price) 
VALUES ('wicked stuff', 'speedy_brand', 'black', 'L', 1000);
INSERT INTO pool_cues (name, brand, color, size, price) 
VALUES ('nasty stuff', 'slow_brand', 'caramel', 'L', 50);
INSERT INTO pool_cues (name, brand, color, size, price) 
VALUES ('oof stuff', 'ouchie_brand', 'coral', 'L', 15);
INSERT INTO pool_cues (name, brand, color, size, price) 
VALUES ('lets go stuff', 'try_me_brand', 'ocean', 'L', 1500);
INSERT INTO pool_cues (name, brand, color, size, price) 
VALUES ('wicked stuff', 'spendy_brand', 'green', 'L', 10000);

-- INSERT DATA INTO STORE DB -> CUSTOMERS
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Bugs', 'Bunny', 'johnsmith@aol.com');
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Sally', 'Sasserton', 'sallysasserton@yahoo.com');
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Ankur', 'Hooman', 'ankurhooman@gmail.com');
INSERT INTO customers (first_name, last_name, email)
VALUES ('Tom', 'Jerry', 'tomandjerry@gmail.com');
INSERT INTO customers (first_name, last_name, email) 
VALUES ('Tiny', 'Tim', 'johnsmith@gmail.com');

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

--  INSERT DATA INTO STORE DB -> ORDERS
INSERT INTO orders (date, customer_id, adressess_id, kitchen_id, pool_tables_id, pool_cues_id) 
VALUES ('2020-01-05',1,2,3,4,5);
INSERT INTO orders (date, customer_id, adressess_id, kitchen_id, pool_tables_id) 
VALUES ('2020-02-10',2,3,4,2);
INSERT INTO orders (date, customer_id, adressess_id, kitchen_id, pool_cues_id) 
VALUES ('2020-03-11',3,2,3,1);
INSERT INTO orders (date, customer_id, adressess_id, pool_cues_id) 
VALUES ('2020-04-13',4,4,4);
INSERT INTO orders (date, customer_id, adressess_id, kitchen_id, pool_tables_id, pool_cues_id) 
VALUES ('2020-05-16',5,2,1,4,3);