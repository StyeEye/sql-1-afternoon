SELECT
  first_name || ' ' || last_name AS "Full Name"
FROM
  employee
WHERE
  LOWER(city) = 'calgary';
--
SELECT
  first_name || ' ' || last_name AS "Oldest Employee",
  birth_date
FROM
  employee
ORDER BY
  birth_date ASC
LIMIT
  1;
--
SELECT
  first_name || ' ' || last_name AS "Youngest Employee",
  birth_date
FROM
  employee
ORDER BY
  birth_date DESC
LIMIT
  1;
--
SELECT
  first_name || ' ' || last_name AS "Full Name",
  reports_to
FROM
  employee
WHERE
  reports_to IN (
    SELECT
      employee_id
    FROM
      employee
    WHERE
      LOWER(first_name) = 'nancy'
      AND LOWER(last_name) = 'edwards'
  );
--
SELECT
  COUNT(*) AS "Lethbirdge Residents"
FROM
  employee
WHERE
  LOWER(city) = 'lethbridge';