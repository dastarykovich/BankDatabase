USE Bank_db;
DROP PROCEDURE IncreaseCashOnCardByCash;
GO 
	CREATE PROCEDURE IncreaseCashOnCardByCash (@cash INT,@card_id INT)
		AS 
		BEGIN TRANSACTION
		UPDATE CreditCard

			SET CashOnCard=CashOnCard+@cash	
		where Id=@card_id
		IF((SELECT acc.Score 
			FROM Account acc JOIN
				CreditCard cc ON  cc.AccountId=acc.Id
				WHERE  cc.Id=@card_id)
				>=
				(SELECT SUM(CashOnCard)
				FROM CreditCard
				WHERE Id=@card_id
				GROUP BY AccountId)
			)
		COMMIT TRANSACTION
		ELSE ROLLBACK

