USE Bank_db;
	SELECT *FROM Account acc JOIN
			Client cl ON acc.ClientId=cl.Id 
				JOIN SocStatuses ss ON ss.Id=cl.SocStatusId
				JOIN CreditCard cc ON cc.AccountId=acc.Id
				;
SELECT ClientName,SumCard FROM(
SELECT ClientId,SUM(SumCard)AS SumCard FROM(
	SELECT ClientId,SumCard
	FROM (
	SELECT  acc.ClientId,acc.Score-SUM(cc.CashOnCard) AS SumCard FROM Account acc  JOIN
	  CreditCard cc on  cc.AccountId=acc.Id 
	  GROUP BY  acc.Score,acc.ClientId
	 )AS results
)AS results
GROUP BY ClientId
)
AS RESULT
JOIN client on client.Id=result.ClientId
	
 


