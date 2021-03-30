-- Add the appropriate foreign key to the appropriate table

CREATE TABLE properties (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    units INT,
    ownerID INT references owners(id)
);