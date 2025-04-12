-- Стоимость всех книг автора, кроме 'Идиот' и 'Белая гвардия', больше 5000 руб.
SELECT author, SUM(price * amount) AS Стоимость
FROM book
WHERE title NOT IN ("Белая гвардия", "Идиот")
GROUP BY author
HAVING SUM(price*amount) > 5000
ORDER BY Стоимость DESC;