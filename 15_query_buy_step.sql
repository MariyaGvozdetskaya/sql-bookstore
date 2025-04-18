--В таблице city для каждого города указано количество дней, за которые заказ может быть доставлен в этот город (рассматривается только этап "Транспортировка"). 
--Для тех заказов, которые прошли этап транспортировки, вывести количество дней за которое заказ реально доставлен в город. 
--Если заказ доставлен с опозданием, указать количество дней задержки, в противном случае вывести 0. 
--В результат включить номер заказа (buy_id), а также вычисляемые столбцы Количество_дней и Опоздание. 
--Информацию вывести в отсортированном по номеру заказа виде.

  SELECT buy_step.buy_id, 
           datediff (date_step_end, date_step_beg) as 'Количество_дней', 
           if(datediff(buy_step.date_step_end, buy_step.date_step_beg) > city.days_delivery, 
              datediff(buy_step.date_step_end, buy_step.date_step_beg) - city.days_delivery, 
              0) as 'Опоздание' 
  From buy_step             
                  INNER JOIN step on step.step_id = buy_step.step_id            
                  INNER JOIN buy on buy.buy_id = buy_step.buy_id 
                  INNER JOIN client on client.client_id = buy.client_id 
                  INNER JOIN city on city.city_id = client.city_id               
  WHERE step.name_step like 'Транспортировка' and 
          buy_step.date_step_end is not null 
  ORDER BY buy.buy_id
