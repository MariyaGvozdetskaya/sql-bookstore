-- Общие книги в book и supply с одинаковой ценой
SELECT book.title AS Название, name_author AS Автор, book.amount + supply.amount AS Количество
FROM author 
INNER JOIN book USING (author_id)   
INNER JOIN supply ON book.title = supply.title 
                 AND author.name_author = supply.author 
                 AND book.price = supply.price;