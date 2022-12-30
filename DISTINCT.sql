-- A função do DISTINCT é eliminar duplicatas,caso tenha tabelas com campos ou registros duplicados ou iguais, o DISTINCT vai retornar apenas resultados distintos.

SELECT DISTINCT 
            status
FROM e_commerce.orders;

SELECT DISTINCT 
            state
FROM e_commerce.customers;

SELECT DISTINCT
            first_name
FROM e_commerce.customers;

SELECT DISTINCT
      extract(year FROM created_at) AS Ano
FROM e_commerce.orders;