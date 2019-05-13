SELECT
  COUNT(*) AS "US Invoices"
FROM
  invoice
WHERE
  LOWER(billing_country) = 'usa';
--
SELECT
  MAX(total) AS "Largest Invoice Amount"
FROM
  invoice;
--
SELECT
  MIN(total) AS "Smallest Invoice Amount"
FROM
  invoice;
--
SELECT
  invoice_id,
  total
FROM
  invoice
WHERE
  total > 5;
--
SELECT
  invoice_id,
  total
FROM
  invoice
WHERE
  total < 5;
--
SELECT
  invoice_id, total, billing_state
FROM
  invoice
WHERE
  LOWER(billing_state) IN ('ca', 'tx', 'az');
--
SELECT
  AVG(total) AS "Average Invoice Amount"
FROM
  invoice;
--
SELECT
  SUM(total) AS "Invoice Total"
FROM
  invoice;