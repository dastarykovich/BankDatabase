USE Bank_db;
select *FROM SocStatuses;
SELECT * FROM Client JOIN SocStatuses
	ON Client.SocStatusId=SocStatuses.Id;
SELECT *FROM Cities;
SELECT *FROM Bank b JOIN Filials f
	ON b.Id=f.BankId
		JOIN cities c 
			ON c.Id=f.CityId;

SELECT * FROM Account a JOIN client c
	ON a.ClientId=c.Id
		JOIN bank b
			ON b.Id=a.BankId;

SELECT *FROM CreditCard cc JOIN Account ca
	on cc.AccountId=ca.Id
		JOIN client cl 
			on cl.Id=ca.ClientId;