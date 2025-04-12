-- Создание таблицы buy_pay для заказа №5
CREATE TABLE buy_pay AS
SELECT title, name_author, price, buy_book.amount, buy_book.amount * book.price AS Стоимость
FROM book
INNER JOIN buy_book USING (book_id)
INNER JOIN author USING (author_id)
WHERE buy_id=5
ORDER BY title;

SELECT * FROM buy_pay;