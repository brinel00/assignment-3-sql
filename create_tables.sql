-- CREATE TABLES SCRIPT FOR THE Income Tracker DATABASE

-- Create income source table
CREATE TABLE income_sources (
	id INT PRIMARY KEY NOT NULL,
	source_name VARCHAR(50) NOT NULL UNIQUE, -- Makes sure source_name is always filled
	amount DECIMAL(10,2) NOT NULL CHECK(amount >= 0) DEFAULT(0), -- Ensures no negative amounts
	date_received DATE
);

-- Create expenses table
CREATE TABLE expenses (
	id INT PRIMARY KEY NOT NULL, 
	income_id INT, -- References id in income_sources table
	category VARCHAR(50),
	description VARCHAR(100),
	date DATE,
    FOREIGN KEY (income_id) REFERENCES income_sources(id)
);

-- Create profit margin table
CREATE TABLE profit_margin (
	id INT PRIMARY KEY NOT NULL,
	income_id INT,
	net_profit DECIMAL(10,2) DEFAULT(0),
    FOREIGN KEY(income_id) REFERENCES income_sources(id)
);

-- Add amount column to expenses table.
 ALTER TABLE expenses
	ADD amount DECIMAL (10,2) NOT NULL CHECK (amount >= 0);

-- Checking whether id is auto-incremented
SHOW CREATE TABLE expenses;

-- id is not auto-incremented.

-- Adding auto-increment to profit_margin table
ALTER TABLE profit_margin 	
	MODIFY id INT NOT NULL AUTO_INCREMENT;
    
-- Create a function that calculates net profit
-- net profit = total income - total expenses

DELIMITER $$

CREATE FUNCTION net_profit (
	income_amount DECIMAL(10,2), 
    expenses_amount DECIMAL(10,2)
    ) 
	RETURNS DECIMAL(10,2) -- to only return decimals, not just whole numbers
    DETERMINISTIC
    BEGIN
		RETURN income_amount - expenses_amount;
	END $$
    
    DELIMITER ;


        
    