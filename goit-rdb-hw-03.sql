/* 1. Напишіть SQL команду, за допомогою якої можна:
- вибрати всі стовпчики з таблиці products;
- вибрати тільки стовпчики name, phone з таблиці shippers.
*/

SELECT *
FROM `goit-rdb-hw-03`.products;

SELECT 
    name,
    phone
FROM `goit-rdb-hw-03`.shippers;


/* 2. Напишіть SQL команду, за допомогою якої можна знайти середнє,
максимальне та мінімальне значення стовпчика price таблички products.
*/
 
SELECT 
    MIN(price) AS min_price,
    ROUND(AVG(price), 2) AS mean_price,
    MAX(price) AS max_price
FROM `goit-rdb-hw-03`.products;


/* 3. Напишіть SQL команду, за допомогою якої можна обрати унікальні 
значення колонок category_id та price таблиці products.
Оберіть порядок виведення на екран за спаданням значення price 
та виберіть тільки 10 рядків. 
*/

SELECT DISTINCT 
    category_id,
    price
FROM `goit-rdb-hw-03`.products
ORDER BY 2 DESC
LIMIT 10;


/* 4. Напишіть SQL команду, за допомогою якої можна знайти кількість 
продуктів (рядків), які знаходяться в цінових межах від 20 до 100.
*/

SELECT 
    COUNT(name) AS count_name_pd,
    price AS price_between
FROM `goit-rdb-hw-03`.products
WHERE price BETWEEN 20 AND 100
GROUP BY 2
ORDER BY 2 DESC;


/* 5. Напишіть SQL команду, за допомогою якої можна знайти кількість 
продуктів (рядків) та середню ціну (price) у кожного постачальника (supplier_id).
*/

SELECT 
    supplier_id,
    COUNT(name) AS count_name_pd,
    ROUND(AVG(price), 2) AS mean_price
FROM `goit-rdb-hw-03`.products
GROUP BY 1
ORDER BY mean_price DESC;