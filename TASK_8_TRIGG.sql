CREATE TRIGGER UpdatingScore 
ON Account 
INSTEAD OF UPDATE 
AS 
	
IF (
		(SELECT i.Score
    FROM inserted AS i)>=
		(SELECT SUM(cc.CashOnCard)
			FROM CreditCard  cc
			JOIN inserted i on cc.AccountId=i.Id 
			WHERE (cc.AccountId=i.Id)
				GROUP BY cc.AccountId)
) 
			Update Account
	SET Score=(SELECT i.Score
			FROM inserted AS i)
	WHERE Id=(SELECT i.Id
			FROM inserted AS i);