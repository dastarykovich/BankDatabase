USE bank_db
DROP PROC Increase_cash_on_card_by10$
GO	
	CREATE PROCEDURE Increase_cash_on_card_by10$ (@soc_stat INT)
		AS 
		BEGIN
		UPDATE client_account
			SET score=score+10
			WHERE client_id IN
				( SELECT cl.client_id FROM client cl
					WHERE cl.soc_status_id=@soc_stat)
				
			END;

