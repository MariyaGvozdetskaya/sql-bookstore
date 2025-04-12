-- Вставка всех этапов для buy_id = 5 в таблицу buy_step
INSERT INTO buy_step (buy_id, step_id)
SELECT 5, step_id FROM step;

SELECT * FROM buy_step;