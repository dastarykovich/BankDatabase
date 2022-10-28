USE bank_db;
DROP PROCEDURE Increase_cash_on_card_by_cash;
GO 
	CREATE PROCEDURE Increase_cash_on_card_by_cash (@cash INT,@card_id INT)
		AS 
		BEGIN TRANSACTION
		UPDATE credit_card

			SET cash_on_card=cash_on_card+@cash	
		where card_id=@card_id
		IF((SELECT acc.score 
			FROM client_account acc JOIN
				credit_card cc ON  cc.account_id=acc.account_id
				WHERE  cc.card_id=@card_id)
				>=
				(SELECT SUM(cash_on_card)
				FROM credit_card
				WHERE card_id=@card_id
				GROUP BY account_id)
			)
		COMMIT TRANSACTION
		ELSE ROLLBACK

