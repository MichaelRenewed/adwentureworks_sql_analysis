# AdventureWorks SQL Analysis

SQL Server analysis of product-category performance using Microsoft's `AdventureWorksDW2022` sample data warehouse.

## Project file

| File | Description |
| --- | --- |
| `Presentation.sql` | Analyzes product subcategories, sales, costs, profit, profit margin, and rankings across internet and reseller sales. |

## SQL skills demonstrated

- Joining fact and dimension tables
- Aggregating sales, cost, and profit
- Calculating profit margin
- Ranking results with the `RANK()` window function
- Comparing internet and reseller sales
- Filtering and reporting category-level performance

## Environment

- Microsoft SQL Server
- SQL Server Management Studio
- `AdventureWorksDW2022`
- Windows virtual machine

The SQL file was executed successfully in the original virtual-machine environment.

## How to run

1. Restore Microsoft's `AdventureWorksDW2022` sample database in SQL Server.
2. Open `Presentation.sql` in SQL Server Management Studio.
3. Execute the script and review the result sets in order.

Microsoft provides the sample database and restoration instructions in the [official AdventureWorks documentation](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure).

## Notes

- AdventureWorks contains synthetic sample data.
- The database backup is not included in this repository.
- `Presentation.sql` is published without changing its working SQL code.
