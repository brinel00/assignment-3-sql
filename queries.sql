-- QUERY TESTING SCRIPT

-- Check income_sources data 
SELECT * FROM income_sources; -- Looks good!

-- Check expenses data
SELECT * FROM expenses; -- Looks good!

-- Check profit margin data
SELECT * FROM profit_margin; -- Looks good!

-- Testing net_profit function
SELECT net_profit(2000.00, 300.00) AS test_profit; -- returns expected output of 1700.00

-- Testing profit_margin entries to make net_prfit calculations match income - expenses
SELECT * FROM profit_margin;
SELECT 	
	pm.id,
    pm.income_id,
    i.source_name AS income,
    e.amount AS expenses,
    pm.net_profit,
    net_profit(i.amount, COALESCE(e.amount, 0)) AS expected_profit
FROM profit_margin pm
JOIN income_sources i ON pm.income_id = i.id
LEFT JOIN expenses e ON pm.income_id = e.income_id;


-- Calculate the total net profit
SELECT SUM(net_profit) AS total_net_profit FROM profit_margin;

-- Calculate the average net profit
SELECT AVG(net_profit) AS av_net_profit FROM profit_margin;

SELECT * FROM profit_margin;

-- Delete a row from profit_margin table
DELETE FROM profit_margin
	WHERE id = 2;
    
SELECT * FROM profit_margin;

-- See the top 3 income sources with the highest net profits
SELECT i.source_name, p.net_profit
FROM income_sources as i
JOIN profit_margin as p
ON i.id = p.income_id
ORDER BY p.net_profit DESC
LIMIT 3;

-- Select the lowest 3 income sources with the lowest net profits
SELECT i.source_name, p.net_profit
FROM income_sources as i
JOIN profit_margin as p
ON i.id = p.income_id
ORDER BY p.net_profit ASC
LIMIT 3;
