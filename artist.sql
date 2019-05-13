INSERT INTO
  artist (name)
VALUES
  ('Bob'),
  ('Not-bob'),
  ('Sentient Toaster');
--
SELECT
  *
FROM
  artist
ORDER BY
  name DESC
LIMIT
  10;
--
SELECT
  *
FROM
  artist
ORDER BY
  name ASC
LIMIT
  5;
--
SELECT
  *
FROM
  artist
WHERE
  LOWER(name) LIKE 'black%';
--
SELECT
  *
FROM
  artist
WHERE
  LOWER(name) LIKE '%black%'