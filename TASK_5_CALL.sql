	USE bank_db
	SELECT *FROM client_account acc JOIN
			client cl ON acc.client_id=cl.client_id 
				JOIN soc_statuses ss ON ss.soc_status_id=cl.soc_status_id;

EXEC Increase_cash_on_card_by10$ '2';


	SELECT *FROM client_account acc JOIN
			client cl ON acc.client_id=cl.client_id 
				JOIN soc_statuses ss ON ss.soc_status_id=cl.soc_status_id
				JOIN credit_card cc ON cc.account_id=acc.account_id
				;
