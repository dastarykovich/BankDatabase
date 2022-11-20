USE Bank_db;
SELECT  * FROM Account acc  JOIN
	CreditCard cc on  cc.AccountId=acc.Id

	 

SELECT AccountId,Score-SumCard AS Differance
FROM(
SELECT  cc.AccountId,acc.Score ,SUM(cc.CashOnCard) AS SumCard FROM Account acc  JOIN
  CreditCard cc on  cc.AccountId=acc.Id 
  GROUP BY cc.AccountId, acc.Score
  HAVING SUM(cc.CashOnCard)!=acc.Score
 )AS results