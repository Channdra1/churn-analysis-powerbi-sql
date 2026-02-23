
/* STEP 3: After identifying NULL values in the staging table (stg_Churn), we will create a 
processed table named prod_Churn. During this step, we will transform the data by 
replacing NULL values with appropriate defaults to ensure the dataset is clean and ready for analysis. */

SELECT
	[Customer_ID],
    [Gender],
    [Age],
    [Married],
    [State],
    [Number_of_Referrals],
    [Tenure_in_Months],
    ISNULL([Value_Deal],'None') AS [Value_Deal],
    [Phone_Service],
    ISNULL([Multiple_Lines],'No') AS [Multiple_Lines],
    [Internet_Service],
    ISNULL([Internet_Type], 'None') AS [Internet_Type],
    ISNULL([Online_Security],'No') AS [Online_Security],
    ISNULL([Online_Backup],'No') AS [Online_Backup],
    ISNULL([Device_Protection_Plan],'No') AS [Device_Protection_Plan],
    ISNULL([Premium_Support],'No') AS [Premium_Support],
    ISNULL([Streaming_TV],'No') AS [Streaming_TV],
    ISNULL([Streaming_Movies],'No') AS [Streaming_Movies],
    ISNULL([Streaming_Music],'No') AS [Streaming_Music],
    ISNULL([Unlimited_Data],'No') AS [Unlimited_Data],
    [Contract],
    [Paperless_Billing],
    [Payment_Method],
    [Monthly_Charge],
    [Total_Charges],
    [Total_Refunds],
    [Total_Extra_Data_Charges],
    [Total_Long_Distance_Charges],
    [Total_Revenue],
    [Customer_Status],
    ISNULL([Churn_Category], 'Others') AS [Churn_Category],
    ISNULL([Churn_Reason], 'Others') AS [Churn_Reason]

INTO [db_Churn].[dbo].[prod_Churn]
FROM [db_Churn].[dbo].[stg_Churn]