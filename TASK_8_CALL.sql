CREATE TRIGGER update_cash
ON credit_card
INSTEAD OF UPDATE 
AS 

IF 
		(SELECT TOP 1 acc.score
    FROM client_account AS acc
		WHERE(acc.account_id=(SELECT i.account_id
			FROM inserted AS i) )
		ORDER BY acc.score
		)>=
		(SELECT SUM(cc.cash_on_card)+(SELECT cash_on_card FROM inserted)
			FROM credit_card  cc
			WHERE (cc.account_id=(SELECT i.account_id
									FROM inserted AS i))
			AND (cc.card_id!=(SELECT i.card_id
									FROM inserted AS i))
				GROUP BY cc.account_id)
Update credit_card
	SET cash_on_card=(SELECT i.cash_on_card
			FROM inserted AS i)
	WHERE card_id=(SELECT i.card_id
			FROM inserted AS i)