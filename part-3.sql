-- Insert Data into the owners table

INSERT INTO owners (name, age)
VALUES ('William', 29),
('Jane', 43),
('Yuki', 67),
('Bob', 55),
('John', 36),
('Mary', 46);

 id |  name   | age
----+---------+-----
  1 | William |  29
  2 | Jane    |  43
  3 | Yuki    |  67
  4 | Bob     |  55
  5 | John    |  36
  6 | Mary    |  46

-- Insert Data into the properties table

INSERT INTO properties (name, units, owner_id)
VALUES ('Archstone', 20, 3);

INSERT INTO properties (name, units, owner_id)
VALUES ('Zenith Hills', 10, 3);

INSERT INTO properties (name, units, owner_id)
VALUES ('Willowspring', 30, 2);

INSERT INTO properties (name, units, owner_id)
VALUES ('Lago Delray', 15, 4);

INSERT INTO properties (name, units, owner_id)
VALUES ('Hunters', 20, 5);

INSERT INTO properties (name, units, owner_id)
VALUES ('Boca Bridges', 16, 6);

 ownerid |     name     | units | owner_id
---------+--------------+-------+----------
       1 | Archstone    |    20 |        3
       2 | Zenith Hills |    10 |        3
       3 | Willowspring |    30 |        2
       4 | Lago Delray  |    15 |        4
       5 | Hunters      |    20 |        5
       6 | Boca Bridges |    16 |        6

