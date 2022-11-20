USE Bank_db;
SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId;

UPDATE Account
SET Score=300 --INCORRECT SCORE
WHERE Id=1;

SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId;

UPDATE Account
SET Score=3000 --INCORRECT SCORE
WHERE Id=1;

SELECT* FROM Account acc
	JOIN CreditCard cc ON acc.Id=cc.AccountId;