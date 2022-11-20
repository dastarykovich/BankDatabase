USE Bank_db
DROP PROC IncreaseCashOnCardBy10$
GO	
	CREATE PROCEDURE IncreaseCashOnCardBy10$ (@soc_stat INT)
		AS 
		BEGIN
		UPDATE Account
			SET Score=Score+10
			WHERE ClientId IN
				( SELECT cl.Id FROM Client cl
					WHERE cl.SocStatusId=@soc_stat)
				
			END;

