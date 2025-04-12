-- Книги с ценой < 500 или > 600 и общей стоимостью >= 5000
SELECT title, author, price, amount
FROM book
WHERE (price<500 OR price>600) AND price*amount>=5000;