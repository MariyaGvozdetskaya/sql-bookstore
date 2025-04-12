-- Книги, цена которых меньше минимальной цены у любого автора
SELECT author, title, price
FROM book
WHERE price < ANY (
        SELECT MIN(price) 
        FROM book 
        GROUP BY author 
);