--Посчитать стоимость всех экземпляров каждого автора без учета книг «Идиот» и «Белая гвардия». 
--В результат включить только тех авторов, у которых суммарная стоимость книг (без учета книг «Идиот» и «Белая гвардия») более 5000 руб. 
--Вычисляемый столбец назвать Стоимость. 
--Результат отсортировать по убыванию стоимости

  SELECT author, SUM(price * amount) AS Стоимость
  FROM book
  WHERE title NOT IN ("Белая гвардия", "Идиот")
  GROUP BY author
  HAVING SUM(price*amount) > 5000
  ORDER BY Стоимость DESC;
