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
  size      INTEGER,
  price     INTEGER          
);

-- POOL TABLES TABLE
CREATE TABLE pool_tables (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(50),
  brand     VARCHAR(50),
  color     VARCHAR(50),
  size      INTEGER,
  price     INTEGER 
);

-- POOL CUES TABLE
CREATE TABLE pool_cues (
  id        SERIAL PRIMARY KEY,
  name      VARCHAR(50),
  brand     VARCHAR(50),
  color     VARCHAR(50),
  size      INTEGER,
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
  customer_id   INTEGER REFERENCES customers(id),
  line_1        VARCHAR(50) NOT NULL,
  line_2        VARCHAR(50) DEFAULT NULL,
  city          VARCHAR(10),
  state         VARCHAR(2),
  zipcode       VARCHAR(5)
);

-- ORDERS TABLE
CREATE TABLE orders (
  id                SERIAL    PRIMARY KEY,
  customer_id       INTEGER   REFERENCES customers(id),
  adressess_id      INTEGER   REFERENCES adressess(id),
  kitchen_id        INTEGER   DEFAULT NULL REFERENCES kitchens(id),
  pool_tables_id    INTEGER   DEFAULT NULL REFERENCES pool_tables(id),
  pool_cues_id      INTEGER   DEFAULT NULL REFERENCES pool_cues(id)
);

