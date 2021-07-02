-- Schema creation goes here
DROP TABLE IF EXISTS adressess CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS categories CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS orders CASCADE;
DROP TABLE IF EXISTS order_products CASCADE;



-- ADRESSESS TABLE
CREATE TABLE adressess (
  id        SERIAL PRIMARY KEY,
  line_1    VARCHAR(100),
  city      VARCHAR(50),
  state     VARCHAR(2),
  zipcode   VARCHAR(5)
)

-- CUSTOMERS TABLE
CREATE TABLE customers (
  id              SERIAL PRIMARY KEY,
  first_name      VARCHAR(50) NOT NULL,
  last_name       VARCHAR(50) NOT NULL,
  email           VARCHAR(50) NOT NULL,
  adressess_id    INTEGER
);

-- CATEGORIES TABLE
CREATE TABLE categories (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(100)
)

-- PRODUCTS TABLE
CREATE TABLE products (    
  id              SERIAL PRIMARY KEY,
  name            VARCHAR(50),
  price           INTEGER,
  category_id     INTEGER
);

-- ORDERS TABLE
CREATE TABLE orders (
  id                SERIAL PRIMARY KEY,
  date              DATE NOT NULL,
  customer_id       INTEGER
);

-- ORDER_PRODUCTS TABLE
CREATE TABLE order_products (
  id            SERIAL PRIMARY KEY,
  order_id      INTEGER,
  product_id    INTEGER,
  adressess_id  INTEGER
);



-- ALTER TABLES FOR FOREIGN KEYS
ALTER TABLE customers
  ADD CONSTRAINT fk_customers_address_id 
  FOREIGN KEY(address_id) 
  REFERENCES addresses(id);

ALTER TABLE products
  ADD CONSTRAINT fk_products_category_id 
  FOREIGN KEY(category_id) 
  REFERENCES categories (id);
    
ALTER TABLE orders
  ADD CONSTRAINT fk_orders_customer_id 
  FOREIGN KEY(customer_id) 
  REFERENCES customers(id);

ALTER TABLE order_products
  ADD CONSTRAINT fk_order_id 
  FOREIGN KEY(order_id) 
  REFERENCES orders(id);

ALTER TABLE order_products
  ADD CONSTRAINT fk_product_id 
  FOREIGN KEY(product_id) 
  REFERENCES products(id);
