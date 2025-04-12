-- Книги в самых популярных жанрах (максимум экземпляров)
SELECT title, name_author, name_genre, price, amount
FROM author 
INNER JOIN book ON author.author_id = book.author_id
INNER JOIN genre ON book.genre_id = genre.genre_id
WHERE genre.genre_id IN (
    SELECT genre_id FROM (
        SELECT genre_id, SUM(amount) AS sum_amount
        FROM book
        GROUP BY genre_id
        ORDER BY sum_amount DESC
        LIMIT 1
    ) AS top_genre
)
ORDER BY title;