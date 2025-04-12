При анализе продаж книг выяснилось, что наибольшей популярностью пользуются книги Михаила Булгакова, на втором месте книги Сергея Есенина. Исходя из этого решили поднять цену книг Булгакова на 10%, а цену книг Есенина - на 5%. Написать запрос, куда включить автора, название книги и новую цену, последний столбец назвать new_price. Значение округлить до двух знаков после запятой.

       SELECT author, title, ROUND(IF(author="Булгаков М.А.", price*1.1,IF(author="Есенин С.А.", price*1.05, price*1)),2) AS new_price 
       FROM book;
