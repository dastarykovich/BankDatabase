USE Bank_db;
SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId;


UPDATE CreditCard
SET CashOnCard=9999
WHERE Id=1;

USE Bank_db;
SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId;

UPDATE CreditCard
SET CashOnCard=99
WHERE Id=1;

USE Bank_db;
SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId;

