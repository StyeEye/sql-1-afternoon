CREATE TABLE person (
  id SERIAL,
  name VARCHAR,
  age INT,
  height INT,
  city VARCHAR,
  favorite_color VARCHAR
);
--
INSERT INTO
  person (name, age, height, city, favorite_color)
VALUES
  ('bob', 37, 4, 'space', 'aquamarine'),
  ('bob2', 19, 97, 'a nearby cave', 'dirt brown'),
  ('cat', 6, 25, 'warm laundry', 'blood'),
  ('dunkey', 37, 4, 'reference', 'blue'),
  ('bird', 37, 4, 'everywhere', 'blue');
--
SELECT
  *
FROM
  person
ORDER BY
  height DESC;
--
SELECT
  *
FROM
  person
ORDER BY
  height ASC;
--
SELECT
  *
FROM
  person
ORDER BY
  age DESC;
--
SELECT
  *
FROM
  person
WHERE
  age > 20;
--
SELECT
  *
FROM
  person
WHERE
  age = 18;
--
SELECT
  *
FROM
  person
WHERE
  age < 20
  OR age > 30;
--
SELECT
  *
FROM
  person
WHERE
  age != 27;
--
SELECT
  *
FROM
  person
WHERE
  LOWER(favorite_color) != 'red';
--
SELECT
  *
FROM
  person
WHERE
  LOWER(favorite_color) NOT IN ('red', 'blue');
--
SELECT
  *
FROM
  person
WHERE
  LOWER(favorite_color) = 'orange'
  OR LOWER(favorite_color) = 'green';
--
SELECT
  *
FROM
  person
WHERE
  LOWER(favorite_color) IN ('orange', 'green', 'blue');
--
SELECT
  *
FROM
  person
WHERE
  LOWER(favorite_color) IN ('yellow', 'purple');
--