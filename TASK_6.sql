USE bank_db;
	SELECT *FROM client_account acc JOIN
			client cl ON acc.client_id=cl.client_id 
				JOIN soc_statuses ss ON ss.soc_status_id=cl.soc_status_id
				JOIN credit_card cc ON cc.account_id=acc.account_id
				;
SELECT client_name,sum_card FROM(
SELECT client_id,SUM(sum_card)AS sum_card FROM(
	SELECT client_id,sum_card
	FROM (
	SELECT  acc.client_id,acc.score-SUM(cc.cash_on_card) AS sum_card FROM client_account acc  JOIN
	  credit_card cc on  cc.account_id=acc.account_id 
	  GROUP BY  acc.score,acc.client_id
	 )AS results
)AS results
GROUP BY client_id
)
AS RESULT
JOIN client on client.client_id=result.client_id
	
 


