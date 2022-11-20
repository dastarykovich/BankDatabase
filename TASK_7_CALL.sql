USE Bank_db

SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId

	EXEC IncreaseCashOnCardByCash 1,1;

SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId
