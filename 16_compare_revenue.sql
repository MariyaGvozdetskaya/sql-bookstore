--Сравнить ежемесячную выручку от продажи книг за текущий и предыдущий годы. 
--Для этого вывести год, месяц, сумму выручки в отсортированном сначала по возрастанию месяцев, затем по возрастанию лет виде. 
--Название столбцов: Год, Месяц, Сумма.

  SELECT YEAR(buy_step.date_step_end) AS Год, MONTHNAME(buy_step.date_step_end) AS Месяц, SUM(buy_book.amount * book.price) AS Сумма
  FROM buy_book
      INNER JOIN book USING (book_id)
      INNER JOIN buy ON buy.buy_id = buy_book.buy_id
      INNER JOIN buy_step ON buy_book.buy_id = buy_step.buy_id
  WHERE step_id = 1 AND date_step_end IS NOT NULL
  GROUP BY 2, 1
  UNION ALL
  SELECT YEAR(buy_archive.date_payment) AS Год, MONTHNAME(buy_archive.date_payment) AS Месяц, SUM(buy_archive.amount * buy_archive.price) AS Сумма
  FROM buy_archive
     
  GROUP BY 2, 1
  ORDER BY 2, 1
