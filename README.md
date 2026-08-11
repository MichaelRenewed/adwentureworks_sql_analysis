# AdventureWorks Sales and Profitability Analysis

SQL Server analysis of product-category and product-subcategory performance using Microsoft's `AdventureWorksDW2022` sample data warehouse.

**Author:** Michael Galyts

## Overview

`Presentation.sql` contains seven query blocks that explore product categories and analyze sales, costs, profit, profit margin, and performance rankings across internet and reseller sales.

The analysis answers questions such as:

- Which product subcategories generate the highest sales?
- Which subcategories have the highest costs and profit?
- How does the Components category perform?
- How do internet and reseller order lines compare by sales, cost, profit, and profit margin?

## Project file

| File | Description |
| --- | --- |
| `Presentation.sql` | Seven SQL query blocks covering product exploration, aggregated performance, profitability, and ranking analysis. |

## SQL skills demonstrated

- `INNER JOIN` and `LEFT JOIN`
- `SUM()`, `CAST()`, `ISNULL()`, and `CONCAT()`
- `GROUP BY` and `ORDER BY`
- Profit and profit-margin calculations
- Ranking with the `RANK()` window function
- Analysis of internet and reseller sales

## Prerequisites

- A Mac capable of running VMware Fusion
- VMware Fusion with a Windows virtual machine
- Microsoft SQL Server
- SQL Server Management Studio
- The `AdventureWorksDW2022` sample database

## Development environment

The SQL was developed and tested with SQL Server Management Studio inside a Windows virtual machine running through VMware Fusion on macOS.

## How to run

1. Start the Windows virtual machine in VMware Fusion.
2. Open SQL Server Management Studio and connect to SQL Server.
3. Confirm that `AdventureWorksDW2022` is installed.
4. Open `Presentation.sql`.
5. Execute the script and review the seven result sets in order.

Microsoft provides the sample database and restoration instructions in the [official AdventureWorks documentation](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure).

## Notes

- AdventureWorks contains synthetic sample data.
- The database backup is not included in this repository.
- Rank-column names were clarified for readability; the ranking calculations were not changed.
