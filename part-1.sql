-- 1. create a database called apartments


-- 2. connect to that database

-- 3. create the owners table
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INTEGER
);
-- 4. create the properties table

CREATE TABLE properties (
    ownerID SERIAL PRIMARY KEY,
    name VARCHAR(255),
    units INTEGER
);

 Schema |    Name    | Type  |     Owner
--------+------------+-------+----------------
 public | owners     | table | aneltuyebayeva
 public | properties | table | aneltuyebayeva