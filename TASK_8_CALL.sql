CREATE TRIGGER UpdateCash
ON CreditCard
INSTEAD OF UPDATE 
AS 

IF 
		(SELECT TOP 1 Acc.Score
    FROM Account AS acc
		WHERE(acc.Id=(SELECT i.AccountId
			FROM inserted AS i) )
		ORDER BY acc.Score
		)>=
		(SELECT SUM(cc.CashOnCard)+(SELECT CashOnCard FROM inserted)
			FROM CreditCard  cc
			WHERE (cc.AccountId=(SELECT i.AccountId
									FROM inserted AS i))
			AND (cc.Id!=(SELECT i.Id
									FROM inserted AS i))
				GROUP BY cc.AccountId)
Update CreditCard
	SET CashOnCard=(SELECT i.CashOnCard
			FROM inserted AS i)
	WHERE Id=(SELECT i.Id
			FROM inserted AS i)