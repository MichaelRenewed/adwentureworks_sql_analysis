Use AdventureWorksDW2022
go


select*


from dbo.DimProductCategory

select
	Ps.EnglishProductSubcategoryName,
	sum(S.SalesAmount) as TotalSales,
	RANK() OVER (
	ORDER by sum(S.SalesAmount)  desc) as SubcategoryRankInSales
from dbo.DimProductSubcategory as Ps
inner join dbo.DimProduct as P
	on Ps.ProductSubcategoryKey = P.ProductSubcategoryKey
inner join dbo.FactInternetSales as S
	on P.ProductKey = S.ProductKey
group by Ps.EnglishProductSubcategoryName
order by TotalSales desc

select
	Ps.EnglishProductSubcategoryName,
	sum(S.TotalProductCost) as TotalCost,
	RANK() OVER (
	ORDER by sum(S.TotalProductCost)  desc) as SubcategoryRankInCost
from dbo.DimProductSubcategory as Ps
inner join dbo.DimProduct as P
	on Ps.ProductSubcategoryKey = P.ProductSubcategoryKey
inner join dbo.FactInternetSales as S
	on P.ProductKey = S.ProductKey
group by Ps.EnglishProductSubcategoryName
order by TotalCost desc


select
	Ps.EnglishProductSubcategoryName,
	sum(S.SalesAmount) - sum(S.TotalProductCost) as TotalProfit,
	RANK() OVER (
	ORDER by sum(S.SalesAmount) - sum(S.TotalProductCost)  desc) as ProfitRankInSubcategory
from dbo.DimProductSubcategory as Ps
inner join dbo.DimProduct as P
	on Ps.ProductSubcategoryKey = P.ProductSubcategoryKey
inner join dbo.FactInternetSales as S
	on P.ProductKey = S.ProductKey
group by Ps.EnglishProductSubcategoryName
order by TotalProfit desc

SELECT
    ps.EnglishProductSubcategoryName,
    pc.EnglishProductCategoryName,

    CAST(ISNULL(SUM(s.SalesAmount), 0) - ISNULL(SUM(s.TotalProductCost), 0) AS DECIMAL(18,2)) AS TotalProfit,
    CAST(ISNULL(SUM(s.SalesAmount), 0) AS DECIMAL(18,2)) AS TotalSales,
    CAST(ISNULL(SUM(s.TotalProductCost), 0) AS DECIMAL(18,2)) AS TotalCost
FROM dbo.DimProductCategory pc
LEFT JOIN dbo.DimProductSubcategory ps
    ON pc.ProductCategoryKey = ps.ProductCategoryKey
LEFT JOIN dbo.DimProduct p
    ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN dbo.FactInternetSales s
    ON p.ProductKey = s.ProductKey
WHERE pc.EnglishProductCategoryName = 'Components'
GROUP BY
    ps.EnglishProductSubcategoryName,
    pc.EnglishProductCategoryName
ORDER BY ps.EnglishProductSubcategoryName;

select
	Ps.EnglishProductSubcategoryName,
	Pc.EnglishProductCategoryName,
		s.SalesOrderNumber,
	s.SalesOrderLineNumber,
	cast(sum(S.SalesAmount) - sum(S.TotalProductCost) as decimal(18,2)) as TotalProfit,
	cast(sum(S.SalesAmount) as decimal(18,2)) as TotalSales,
	cast(sum(S.TotalProductCost) as decimal(18,2)) as TotalCost,

	concat(cast ((sum(S.SalesAmount) - sum(S.TotalProductCost))* 100.0/sum(s.SalesAmount)
			as decimal(10,2)),'%') as ProfitMargin,
	RANK() OVER (
	ORDER by sum(S.SalesAmount) - sum(S.TotalProductCost)  desc) as ProfitRankSubcategory,
	RANK() OVER (
	ORDER by sum(S.SalesAmount)  desc) as SubcategoryRankSales,
	RANK() OVER (
	ORDER by sum(S.TotalProductCost)  desc) as SubcategoryRankCost
from dbo.DimProductSubcategory as Ps
inner join dbo.DimProduct as P
	on Ps.ProductSubcategoryKey = P.ProductSubcategoryKey
inner join dbo.FactResellerSales as S
	on P.ProductKey = S.ProductKey
inner join dbo.DimProductCategory as PC
on Ps.ProductCategoryKey = Pc.ProductCategoryKey
group by Ps.EnglishProductSubcategoryName, pc.EnglishProductCategoryName, s.SalesOrderNumber,
	s.SalesOrderLineNumber
order by S.SalesOrderNumber desc

select
	Ps.EnglishProductSubcategoryName,
	Pc.EnglishProductCategoryName,
		s.SalesOrderNumber,
	s.SalesOrderLineNumber,
	cast(sum(S.SalesAmount) - sum(S.TotalProductCost) as decimal(18,2)) as TotalProfit,
	cast(sum(S.SalesAmount) as decimal(18,2)) as TotalSales,
	cast(sum(S.TotalProductCost) as decimal(18,2)) as TotalCost,

	concat(cast ((sum(S.SalesAmount) - sum(S.TotalProductCost))* 100.0/sum(s.SalesAmount)
			as decimal(10,2)),'%') as ProfitMargin,
	RANK() OVER (
	ORDER by sum(S.SalesAmount) - sum(S.TotalProductCost)  desc) as ProfitRankSubcategory,
	RANK() OVER (
	ORDER by sum(S.SalesAmount)  desc) as SubcategoryRankSales,
	RANK() OVER (
	ORDER by sum(S.TotalProductCost)  desc) as SubcategoryRankCost
from dbo.DimProductSubcategory as Ps
inner join dbo.DimProduct as P
	on Ps.ProductSubcategoryKey = P.ProductSubcategoryKey
inner join dbo.FactInternetSales as S
	on P.ProductKey = S.ProductKey
inner join dbo.DimProductCategory as PC
on Ps.ProductCategoryKey = Pc.ProductCategoryKey
group by Ps.EnglishProductSubcategoryName, pc.EnglishProductCategoryName, s.SalesOrderNumber,
	s.SalesOrderLineNumber
order by S.SalesOrderNumber desc