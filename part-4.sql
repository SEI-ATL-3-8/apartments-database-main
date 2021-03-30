-- 1. Show all the data in the owners table.

SELECT * FROM owners;

-- 2. Show the names of all owners.

SELECT name FROM owners;

-- 3. Show the ages of all of the owners in ascending order.

SELECT age FROM owners ORDER BY age ASC;

-- 4. Show the names and ages of all owners who are older than 30.

SELECT name, age FROM owners WHERE age > 30;


-- 5. Change Jane's age to 30.

UPDATE owners SET age = 30 WHERE name = 'Jane';

-- 6. Change Jane's name to Janet.

UPDATE owners SET name = 'Janet' WHERE name = 'Jane';

-- 7. Show the names of the first three properties in your properties table.

SELECT name FROM properties LIMIT 3;

-- 8. Show the name of all properties whose name contains an `a`.

SELECT name FROM properties WHERE name LIKE '%a%';

-- 9. Show the highest age of all owners.

SELECT MAX(age) FROM owners; 

-- 10. Show all the properties that are owned by the owner with an id of 2.

SELECT name FROM properties WHERE ownerID = 2;

-- 11. Show all the properties that are owned by Yuki.

SELECT properties.name FROM properties JOIN owners ON properties.ownerID = owners.id WHERE owners.name = 'Yuki'; 

-- 12. Show the count of how many properties Yuki owns.

SELECT COUNT(properties.name) FROM properties JOIN owners ON properties.ownerID = owners.id WHERE owners.name = 'Yuki'; 

-- 13. Show the name of Willowspring's owner.

SELECT owners.name FROM properties JOIN owners ON properties.ownerID = owners.id WHERE properties.name = 'Willowspring';

-- 14. Show the names of the people who own properties that have names of 10 characters or longer

SELECT owners.name FROM properties JOIN owners ON properties.ownerID = owners.id WHERE char_length(properties.name) = 10 OR char_length(properties.name) > 10;

-- 15. Change Willowspring so that is now owned by Yuki.

UPDATE properties SET ownerID = 3 WHERE name = 'Willowspring';
