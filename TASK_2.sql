USE bank_db;
SELECT  cash_on_card,cl.client_name,b.bank_name FROM credit_card cc JOIN
		client_account acc on cc.account_id=acc.account_id
			JOIN bank b ON b.bank_id=acc.bank_id
				JOIN client cl ON acc.client_id=cl.client_id;

