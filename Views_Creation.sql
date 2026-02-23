
IF OBJECT_ID('vw_ChurnData','V') IS NOT NULL
DROP VIEW vw_ChurnData;
GO

CREATE VIEW vw_ChurnData AS
	SELECT * FROM prod_Churn where Customer_Status IN ('Churned' , 'Stayed');
GO

IF OBJECT_ID('vw_JoinData','V') IS NOT NULL
DROP VIEW vw_JoinData;
GO

CREATE VIEW vw_JoinData AS
	SELECT * FROM prod_Churn where Customer_Status = 'Joined';
GO
