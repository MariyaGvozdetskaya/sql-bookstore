Завершить этап «Оплата» для заказа с номером 5, вставив в столбец date_step_end дату 13.04.2020, и начать следующий этап («Упаковка»), задав в столбце date_step_beg для этого этапа ту же дату.

    UPDATE buy_step 
    SET date_step_end = '2020-04-13'
    WHERE step_id = (
            SELECT step_id FROM step WHERE name_step = 'Оплата'
        ) AND buy_id = 5;

    UPDATE buy_step 
    SET date_step_beg = '2020-04-13'
    WHERE step_id = (
            SELECT step_id + 1 FROM step WHERE name_step = 'Оплата'
        ) AND buy_id = 5;
