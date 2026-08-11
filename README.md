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

- Access to Microsoft SQL Server through one of these environments:
  - A Windows computer
  - A Windows virtual machine
  - A SQL Server Linux container running with Docker on a supported host
- A compatible SQL client, such as SQL Server Management Studio or `sqlcmd`
- The `AdventureWorksDW2022` sample database

## Development environment

The SQL was developed and tested with SQL Server Management Studio inside a Windows virtual machine running through VMware Fusion on macOS. VMware Fusion describes the development setup used for this project; it is not required to run the SQL.

## How to run

1. Start the SQL Server environment: Windows, a Windows virtual machine, or a supported Docker container.
2. Connect to SQL Server using a compatible SQL client.
3. Confirm that `AdventureWorksDW2022` is installed.
4. Open `Presentation.sql`.
5. Execute the script and review the seven result sets in order.

Microsoft provides:

- The sample database and restoration instructions in the [official AdventureWorks documentation](https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure)
- Instructions for running [SQL Server Linux container images with Docker](https://learn.microsoft.com/en-us/sql/linux/install-upgrade/quickstart-install-docker)

## Notes

- AdventureWorks contains synthetic sample data.
- The database backup is not included in this repository.
- Rank-column names were clarified for readability; the ranking calculations were not changed.
