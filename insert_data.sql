-- INSERT DATA SCRIPT

-- Insert data into income_sources table
INSERT INTO income_sources (id, source_name, amount, date_received)
	VALUES 
    (1, 'Freelance Writing', 1200.50, '2025-01-10'),
    (2, 'Online Store Sales', 3450.75, '2025-01-15'),
    (3, 'YouTube Ad Revenue', 890.00, '2025-01-20'),
    (4, 'Affiliate Marketing', 720.30, '2025-01-28'),
    (5, 'Consulting Services', 2500.00, '2024-01-28'),
    (6, 'Digital Product Sales', 1150.25, '2025-02-01'),
    (7, 'Stock Dividends', 400.80, '2025-02-05'),
    (8, 'Sponsored Posts', 950.60, '2025-02-10'),
    (9, 'Brand Partnerships', 1875.90, '2025-02-15'),
    (10, 'Rental Income', 2000.00, '2025-02-20'),
    (11, 'Course Sales', 3200.40, '2025-02-25'),
    (12, 'App Development', 4600, '2025-03-01'),
    (13, 'Event Hosting', 1050.00, '2025-03-05'),
    (14, 'Tutoring', 675.20, '2025-03-10'),
    (15, 'Dropshipping', 2250.90, '2025-03-15'),
    (16, 'Business Consulting', 5500.00, '2025-03-20')
    ;


-- Insert values into expenses table
INSERT INTO expenses (id, income_id, category, description, amount, date)
	VALUES
    (1, 1, 'Software', 'Writing tool subscription', 45.99,  '2025-01-12'),
    (2, 2, 'Shipping', 'Order fulfillment fees', 120.50, '2025-01-16'),
    (3, 3, 'Equipment', 'Camera maintenance', 250.00, '2025-01-21'),
    (4, 4, 'Advertising', 'Social media ads', 500.00, '2025-01-29'),
    (5, 5, 'Office Rent', 'Co-working space fee', 750.00, '2025-02-03'),
    (6, 6, 'Software', 'E-commerce platform fee', 100.00, '2025-02-03'),
    (7, 7, 'Taxes', 'Dividend tax deductions', 50.00, '2025-02-06'),
    (8, 8, 'Marketing', 'Sponsored post production', 350.00, '2025-02-11'),
    (9, 9, 'Travel', 'Business meeting flights', 550.00, '2025-02-16'),
    (10, 10, 'Maintenance', 'Property repairs', 300.00, '2025-02-26'),
    (11, 11, 'Course Hosting', 'Platform hosting fee', 200.00, '2025-02-26'),
    (12, 12, 'App Development', 'Developer hiring cost', 2000.00, '2025-03-02'),
    (13, 13, 'Event Logistics', 'Venue rental', 1500.00, '2025-03-06'),
    (14, 14, 'Educational Materials', 'Tutoring course resources', 100.00, '2025-03-11'),
    (15, 15, 'Product Sourcing', 'Supplier payments', 400.00, '2025-03-16'),
    (16, 16, 'Consulting', 'Business strategy tools', 1000.00, '2025-03-21')
    ;
    
    
    -- Insert values into profit_margin
    INSERT INTO profit_margin (id, income_id, net_profit)
    VALUES 
		(NULL, 1, net_profit(1200.50, 45.99)),
        (NULL, 2, net_profit(3450.75, 120.50)),
        (NULL, 3, net_profit(890.00, 250.00)),
        (NULL, 4, net_profit(720.30, 500.00)),
        (NULL, 5, net_profit(2500.00, 750.00)),
        (NULL, 6, net_profit(1150.25, 100.00)),
        (NULL, 7, net_profit(400.80, 50.00)),
        (NULL, 8, net_profit(950.60, 350.00)),
        (NULL, 9, net_profit(1875.90, 550.00)),
        (NULL, 10, net_profit(2000.00, 300.00)),
        (NULL, 11, net_profit(3200.40, 200.00)),
        (NULL, 12, net_profit(4600.00, 2000.00)),
        (NULL, 13, net_profit(1050.00, 1500.00)),
        (NULL, 14, net_profit(675.20, 100.00)),
        (NULL, 15, net_profit(2250.90, 400.00)),
        (NULL, 16, net_profit(5500.00, 1000.00));
    
-- Verify data and making sure the net_profit function works
select * from profit_margin;

-- id column auto-increments correctly when I inserted NULL values to 
-- match the 3 values stated in the table column
    
    