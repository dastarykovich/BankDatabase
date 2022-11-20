	USE Bank_db
	SELECT *FROM Account acc JOIN
			client cl ON acc.ClientId=cl.Id 
				JOIN SocStatuses ss ON ss.Id=cl.SocStatusId;

EXEC IncreaseCashOnCardBy10$ '2';


	SELECT *FROM Account acc JOIN
			Client cl ON acc.ClientId=cl.Id 
				JOIN SocStatuses ss ON ss.Id=cl.SocStatusId
				JOIN CreditCard cc ON cc.AccountId=acc.Id
				;
