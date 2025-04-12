-- Завершение этапа 'Оплата' и начало 'Упаковка' для заказа 5
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