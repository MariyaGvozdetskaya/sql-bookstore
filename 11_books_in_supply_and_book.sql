Если в таблицах supply  и book есть одинаковые книги, которые имеют равную цену,  вывести их название и автора.
Посчитать общее количество экземпляров книг в таблицах supply и book. 
Столбцы назвать Название, Автор  и Количество.

  SELECT book.title AS Название, name_author AS Автор, book.amount + supply.amount AS Количество
  FROM author 
  INNER JOIN book USING (author_id)   
  INNER JOIN supply ON book.title = supply.title 
                 AND author.name_author = supply.author 
                 AND book.price = supply.price;
