-- 1. Show all the data in the owners table.
SELECT * FROM owners;

 id |  name   | age
----+---------+-----
  1 | William |  29
  2 | Jane    |  43
  3 | Yuki    |  67
  4 | Bob     |  55
  5 | John    |  36
  6 | Mary    |  46
(6 rows)
-- 2. Show the names of all owners.

SELECT name FROM owners;
  name
---------
 William
 Jane
 Yuki
 Bob
 John
 Mary
(6 rows)

-- 3. Show the ages of all of the owners in ascending order.

SELECT age FROM owners ORDER BY age ASC;
 age
-----
  29
  36
  43
  46
  55
  67
(6 rows)

-- 4. Show the names and ages of all owners who are older than 30.

SELECT name, age FROM owners WHERE age>30;
 name | age
------+-----
 Jane |  43
 Yuki |  67
 Bob  |  55
 John |  36
 Mary |  46
(5 rows)

-- 5. Change Jane's age to 30.

UPDATE owners SET age=30 WHERE name='Jane';

-- 6. Change Jane's name to Janet.

UPDATE owners SET name='Janet' WHERE name='Jane';

-- 7. Show the names of the first three properties in your properties table.

SELECT name FROM Properties LIMIT 3;
     name
--------------
 Archstone
 Zenith Hills
 Willowspring
(3 rows)

-- 8. Show the name of all properties whose name contains an `a`.

SELECT name FROM properties WHERE name LIKE '%a%';
     name
--------------
 Lago Delray
 Boca Bridges

-- 9. Show the highest age of all owners.

SELECT MAX(age) FROM owners;
 max
-----
  67
(1 row)

-- 10. Show all the properties that are owned by the owner with an id of 2.

SELECT name FROM properties WHERE owner_id=2;
     name
--------------
 Willowspring
(1 row)

-- 11. Show all the properties that are owned by Yuki.
SELECT properties.name FROM properties
  JOIN owners
  ON properties.owner_id=owners.id
  WHERE owners.name='Yuki';

SELECT name FROM properties WHERE owner_id=3;
     name
--------------
 Archstone
 Zenith Hills
(2 rows)

-- 12. Show the count of how many properties Yuki owns.

SELECT COUNT(*) FROM properties 
JOIN owners
ON properties.owner_id=owners.id
  WHERE owners.name='Yuki';

-- 13. Show the name of Willowspring's owner.

SELECT owners.name FROM owners
  JOIN properties
  ON owners.id=properties.owner_id
  WHERE properties.name='Willowspring';

-- 14. Show the names of the people who own properties that have names of 10 characters or longer

SELECT name FROM owners WHERE LENGTH(name)>10;

-- 15. Change Willowspring so that is now owned by Yuki.

UPDATE properties SET owner_id=3 WHERE name='Willowspring';