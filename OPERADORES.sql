-- OPERADORES:

-- Lógicos (NOT, AND, OR) 
-- Aritméticos (+, -, *, /)
SELECT
    1 + 1 AS Soma,
    5 - 4 AS Subtracao,
    7 * 2 AS Multiplicacao,
    10/ 2 AS Divisao;

-- Comparação (=, <> ou !=, >=, <=, >, <, between, like, in)
SELECT
   1 = 1,
   3 <> 0,
   3 > 4,
   5 < 10,
   2 >= 2;

-- BETWEEN
SELECT
    2 BETWEEN 0 AND 10,
    -4 BETWEEN 0 AND 25,
    5 BETWEEN 5 AND 8;

SELECT * 
FROM e_commerce.products
WHERE price BETWEEN 16 AND 29
ORDER BY price ASC;

-- LIKE
SELECT
    first_name
FROM e_commerce.customers
WHERE first_name LIKE 'M%';

SELECT *
FROM e_commerce.customers
WHERE first_name LIKE '%m%';

SELECT *
FROM e_commerce.customers
WHERE first_name LIKE 'M%' OR first_name LIKE '%m%';

SELECT *
FROM e_commerce.customers
WHERE state LIKE '%s'

-- IN
SELECT *
FROM e_commerce.customers
WHERE state IN ('Alagoas', 'Piauí');

SELECT *
FROM e_commerce.products
WHERE price IN (15, 10, 75);

-- IS (is null, is true, is false)
SELECT *
FROM e_commerce.customers
WHERE email IS NULL;

SELECT *
FROM e_commerce.customers
WHERE email IS NOT NULL;

SELECT *
FROM `bigquery-public-data`.chicago_crime.crime
WHERE arrest IS TRUE; -- houve prisão
