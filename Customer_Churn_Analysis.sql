
--- Gender Wise Analysis with Percentage
SELECT
	Gender,
	COUNT(Gender) AS "Gender",
	COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM stg_Churn ) AS "Percentage"
FROM stg_Churn 
GROUP BY Gender

--- Contract Wise Analysis with Percentage

SELECT
	Contract,
	COUNT(Contract) AS "TotalCount",
	COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM stg_Churn ) as "Percentage"
FROM stg_Churn
GROUP BY Contract

--- Customer Status [Revenue] Wise Analysis with Percentage

SELECT 
	Customer_Status,
	Count(Customer_Status) AS TotalCount,
	SUM(Total_Revenue) AS TotalRevenue,
	SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM stg_Churn ) * 100 AS "RevPercentage"
FROM stg_Churn
GROUP BY Customer_Status

--- State Wise Analysis with Percentage and find out with order by which top 5 states has contributed more in the
--- entire data.

SELECT
	State,
	Count(State) AS TotalCount,
	Count(State) * 100.0 / (SELECT COUNT(*) FROM stg_Churn ) as "Percentage"
FROM stg_Churn
GROUP BY State
ORDER BY Percentage DESC

SELECT DISTINCT Internet_Type from stg_Churn

/*
EXPLORE AND CLEAN 
Find Null Values in each column and remove null as per the column values
*/

