-- Средняя цена и стоимость книг с количеством от 5 до 14 включительно
SELECT ROUND(AVG(price),2) AS Средняя_цена,
       ROUND(SUM(price*amount),2) AS Стоимость
FROM book
WHERE amount BETWEEN 5 AND 14;