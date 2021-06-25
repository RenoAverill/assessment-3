-- Schema creation goes here
DROP TABLE IF EXISTS kitchens CASCADE;
DROP TABLE IF EXISTS pool_tables CASCADE;
DROP TABLE IF EXISTS pool_cues CASCADE;
DROP TABLE IF EXISTS adressess CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS orders CASCADE;


-- KITCHENS TABLE
CREATE TABLE kitchens (    
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(50),
  brand     VARCHAR(50),
  color     VARCHAR(50),
  size      VARCHAR(1),
  price     INTEGER          
);

-- POOL TABLES TABLE
CREATE TABLE pool_tables (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(50),
  brand     VARCHAR(50),
  color     VARCHAR(50),
  size      VARCHAR(1),
  price     INTEGER 
);

-- POOL CUES TABLE
CREATE TABLE pool_cues (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(50),
  brand     VARCHAR(50),
  color     VARCHAR(50),
  size      VARCHAR(1),
  price     INTEGER 
);

-- CUSTOMERS TABLE
CREATE TABLE customers (
  id          SERIAL PRIMARY KEY,
  first_name  VARCHAR(50) NOT NULL,
  last_name   VARCHAR(50) NOT NULL,
  email       VARCHAR(50) NOT NULL
);

-- ADRESSES TABLE
CREATE TABLE adressess (
  id            SERIAL PRIMARY KEY,
  customer_id   INTEGER,
  line_1        VARCHAR(50) NOT NULL,
  line_2        VARCHAR(50) DEFAULT NULL,
  city          VARCHAR(10),
  state         VARCHAR(2),
  zipcode       VARCHAR(5)
);

-- ORDERS TABLE
CREATE TABLE orders (
  id                SERIAL PRIMARY KEY,
  date              DATE NOT NULL,
  customer_id       INTEGER,
  adressess_id      INTEGER,
  kitchen_id        INTEGER DEFAULT NULL,
  pool_tables_id    INTEGER DEFAULT NULL,
  pool_cues_id      INTEGER DEFAULT NULL
);


ALTER TABLE adressess
ADD CONSTRAINT fk_users_addresses_id
FOREIGN KEY (customer_id) REFERENCES customers(id);

ALTER TABLE orders
ADD CONSTRAINT fk_users_orders_id
FOREIGN KEY (customer_id) REFERENCES customers(id);

ALTER TABLE orders
ADD CONSTRAINT fk_users_adressess_id
FOREIGN KEY (adressess_id) REFERENCES adressess(id);

ALTER TABLE orders
ADD CONSTRAINT fk_users_kitchen_id
FOREIGN KEY (kitchen_id) REFERENCES kitchens(id);

ALTER TABLE orders
ADD CONSTRAINT fk_users_tables_id
FOREIGN KEY (pool_tables_id) REFERENCES pool_tables(id);

ALTER TABLE orders
ADD CONSTRAINT fk_users_cues_id
FOREIGN KEY (pool_cues_id) REFERENCES pool_cues(id);