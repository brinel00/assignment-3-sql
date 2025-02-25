# Income and Expense Tracking Database
## **Problem Statement**

Managing multiple streams of income whilst working a 9-5 can get quite messy. Many people who have multiple streams sturggle to track their income, where their money is going, and which sources are the most profitable. Seeing high figures doesn't mean anything if the expentidure is too high. 

This project focuses on creating a **SQL database** that:
- Tracks various income sources (E.g., Youtube, Depop, 9-5 job,etc.).
- Records expenses associated with each income source.
- Determines the net profit per source.
- Provides insights into the most lucrative income streams.


## Database Design
**_Tables_**

- `Income sources` (id, source_name, amount, date _received)
- `Expenses` (id, income_id, amount, category, description, date)
- `Profit margin` (id, income_id, net_profit)


## Technologies Used
- MySQL Workbench
- GitHub 


## Stored Functions Used

The stored function in this project calculates the net profit for each income source using the income and expense data. This reduces the need for manual calculations every time you query profit data. 


## Follow these steps to get started:
1. Clone this repository.
2. Execute the SQL script to set up the database.
3. Add sample data and run your queries.

=======
# assignment-3-sql
>>>>>>> 7aaafa991456aa8499127e38186a8f43f28d5bc6
