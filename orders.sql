CREATE TABLE orders (
  person_id SERIAL,
  product_name VARCHAR,
  product_price NUMERIC,
  quantity INT
);
--
INSERT INTO
  orders (person_id, product_name, product_price, quantity)
VALUES
  (0, 'Laser Pointer', 50, 532),
  (1, 'Nessy', 3.5, 500),
  (2, 'Artistan Toaster', 4900, 16),
  (3, 'Bottled Air', 13, 600),
  (4, 'Meme', 99.99, 1337);
--
SELECT
  *
FROM
  orders;
--
SELECT
  SUM(quantity) AS "Total Orders"
FROM
  orders;
--
SELECT
  SUM(quantity * product_price) AS "Total Expenditure"
FROM
  orders;
--
SELECT
  person_id,
  SUM(quantity * product_price) AS "Individual Expenditure"
FROM
  orders
GROUP BY
  person_id;