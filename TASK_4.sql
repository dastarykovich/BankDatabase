USE Bank_db

SELECT ss.SocStatusName,COUNT(cc.Id) AS CardsAmount FROM CreditCard cc JOIN
	Account acc ON cc.AccountId=acc.Id 
		JOIN Client cl ON cl.Id=acc.ClientId
			JOIN SocStatuses ss ON ss.Id=cl.SocStatusId
	GROUP BY (ss.SocStatusName)



	SELECT Id,
(SELECT COUNT(*) FROM SocStatuses FirstSocialStatus 
JOIN Client ON Client.SocStatusId = FirstSocialStatus.Id
JOIN Account ON client.Id=Account.Id
JOIN CreditCard ON Account.Id = CreditCard.AccountId
WHERE FirstSocialStatus.Id = SecondSocialStatus.Id) AS 'count'
FROM SocStatuses SecondSocialStatus