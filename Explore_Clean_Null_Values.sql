/*
EXPLORE AND CLEAN 
Find Null Values in each column and remove null as per the column values
*/

SELECT
	SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS "Customer_ID_Null Count",
	SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS "Gender_Null Count",
	SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS "Age_Null Count",
	SUM(CASE WHEN Married IS NULL THEN 1 ELSE 0 END) AS "Married_Null Count",
	SUM(CASE WHEN State IS NULL THEN 1 ELSE 0 END) AS "State_Null Count",
	SUM(CASE WHEN Number_of_Referrals IS NULL THEN 1 ELSE 0 END) AS "Number_of_Referrals_Null Count",
	SUM(CASE WHEN Tenure_in_Months IS NULL THEN 1 ELSE 0 END) AS "Tenure_in_Months_Null Count",
	SUM(CASE WHEN Value_Deal IS NULL THEN 1 ELSE 0 END) AS "Value_Deal_Null Count",
	SUM(CASE WHEN Phone_Service IS NULL THEN 1 ELSE 0 END) AS "Phone_Service_Null Count",
	SUM(CASE WHEN Multiple_Lines IS NULL THEN 1 ELSE 0 END) AS "Multiple_Lines_Null Count",
	SUM(CASE WHEN Internet_Service IS NULL THEN 1 ELSE 0 END) AS "Internet_Service_Null Count",
	SUM(CASE WHEN Internet_Type IS NULL THEN 1 ELSE 0 END) AS "Internet_Type_Null Count",
	SUM(CASE WHEN Online_Security IS NULL THEN 1 ELSE 0 END) AS "Online_Security_Null Count",
	SUM(CASE WHEN Online_Backup IS NULL THEN 1 ELSE 0 END) AS "Online_Backup_Null Count",
	SUM(CASE WHEN Device_Protection_Plan IS NULL THEN 1 ELSE 0 END) AS "Device_Protection_Plan_Null Count",
	SUM(CASE WHEN Premium_Support IS NULL THEN 1 ELSE 0 END) AS "Premium_Support_Null Count",
	SUM(CASE WHEN Streaming_TV IS NULL THEN 1 ELSE 0 END) AS "Streaming_TV_Null Count",
	SUM(CASE WHEN Streaming_Movies IS NULL THEN 1 ELSE 0 END) AS "Streaming_Movies_Null Count",
	SUM(CASE WHEN Streaming_Music IS NULL THEN 1 ELSE 0 END) AS "Streaming_Music_Null Count",
	SUM(CASE WHEN Unlimited_Data IS NULL THEN 1 ELSE 0 END) AS "Unlimited_Data_Null Count",
	SUM(CASE WHEN Contract IS NULL THEN 1 ELSE 0 END) AS "Contract_Null Count",
	SUM(CASE WHEN Paperless_Billing IS NULL THEN 1 ELSE 0 END) AS "Paperless_Billing_Null Count",
	SUM(CASE WHEN Payment_Method IS NULL THEN 1 ELSE 0 END) AS "Payment_Method_Null Count",
	SUM(CASE WHEN Monthly_Charge IS NULL THEN 1 ELSE 0 END) AS "Monthly_Charge_Null Count",
	SUM(CASE WHEN Total_Charges IS NULL THEN 1 ELSE 0 END) AS "Total_Charges_Null Count",
	SUM(CASE WHEN Total_Refunds IS NULL THEN 1 ELSE 0 END) AS "Total_Refunds_Null Count",
	SUM(CASE WHEN Total_Extra_Data_Charges IS NULL THEN 1 ELSE 0 END) AS "Total_Extra_Data_Charges_Null Count",
	SUM(CASE WHEN Total_Long_Distance_Charges IS NULL THEN 1 ELSE 0 END) AS "Total_Long_Distance_Charges_Null Count",
	SUM(CASE WHEN Total_Revenue IS NULL THEN 1 ELSE 0 END) AS "Total_Revenue_Null Count",
	SUM(CASE WHEN Customer_Status IS NULL THEN 1 ELSE 0 END) AS "Customer_Status_Null Count",
	SUM(CASE WHEN Churn_Category IS NULL THEN 1 ELSE 0 END) AS "Churn_Category_Null Count",
	SUM(CASE WHEN Churn_Reason IS NULL THEN 1 ELSE 0 END) AS "Churn_Reason_Null Count"
FROM stg_Churn