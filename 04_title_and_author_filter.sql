-- Книги, название которых состоит из 2+ слов, инициалы автора содержат 'С.'
SELECT title, author
FROM book
WHERE title LIKE '_% %' AND author LIKE "%С.%"
ORDER BY title ASC;