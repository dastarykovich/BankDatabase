CREATE TRIGGER updating_score 
ON client_account 
INSTEAD OF UPDATE 
AS 
	
IF (
		(SELECT i.score
    FROM inserted AS i)>=
		(SELECT SUM(cc.cash_on_card)
			FROM credit_card  cc
			JOIN inserted i on cc.account_id=i.account_id 
			WHERE (cc.account_id=i.account_id)
				GROUP BY cc.account_id)
) 
			Update client_account
	SET score=(SELECT i.score
			FROM inserted AS i)
	WHERE account_id=(SELECT i.account_id
			FROM inserted AS i);