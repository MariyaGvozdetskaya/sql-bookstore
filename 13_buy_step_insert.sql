В таблицу buy_step занести дату 12.04.2020 выставления счета на оплату заказа с номером 5.

  update buy_step join step using(step_id)
  set date_step_beg = "2020-04-12"
  where buy_id = 5 and name_step = "Оплата";
  select * from buy_step;
