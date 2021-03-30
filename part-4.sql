-- 1. Show all the data in the owners table.
SELECT *
FROM owners;
-- 2. Show the names of all owners.
SELECT name
FROM owners;
-- 3. Show the ages of all of the owners in ascending order.
SELECT age
FROM owners
ORDER BY age asc;
-- 4. Show the names and ages of all owners who are older than 30.
SELECT name, age
FROM owners
WHERE age > 30;
-- 5. Change Jane's age to 30.
UPDATE owners SET age = 30 WHERE id = 2;
-- 6. Change Jane's name to Janet.
UPDATE owners SET name = 'Janet' where id = 2;
-- 7. Show the names of the first three properties in your properties table.
SELECT *
FROM properties LIMIT
3;
-- 8. Show the name of all properties whose name contains an `a`.
SELECT *
FROM properties
WHERE name LIKE '%a%';
-- 9. Show the highest age of all owners.
SELECT *
FROM owners
WHERE age = (SELECT MAX(age)
FROM owners);

SELECT MAX (age)
FROM owners;

SELECT *
FROM owners
ORDER BY age DESC
LIMIT 1;

-- 10. Show all the properties that are owned by the owner with an id of 2.
SELECT name
FROM properties WHERE ownerId = 2;
-- 11. Show all the properties that are owned by Yuki.
SELECT properties.name
FROM properties JOIN owners ON properties.ownerId = owners.id
WHERE owners.name = 'Yuki';
-- 13. Show the name of Willowspring's owner.
SELECT owners.name
FROM owners JOIN properties ON owners.id = properties.ownerId
WHERE properties.name = 'Willowspring';
-- 15. Change Willowspring so that is now owned by Yuki.
UPDATE properties 
SET ownerId = (SELECT id
FROM owners
WHERE name = 'Yuki')
WHERE name = 'Willowspring';

UPDATE properties 
SET ownerId = owners.id FROM owners WHERE owners.name = 'Janet'
    AND properties.name = 'Willowspring';