USE bank_db

SELECT* FROM client_account acc
	JOIN credit_card cc ON acc.account_id=cc.account_id

	EXEC Increase_cash_on_card_by_cash 16,16000;

SELECT* FROM client_account acc
	JOIN credit_card cc ON acc.account_id=cc.account_id
