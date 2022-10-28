USE bank_db;
SELECT  * FROM client_account acc  JOIN
	credit_card cc on  cc.account_id=acc.account_id

	 

SELECT account_id,score-sum_card AS Differance
FROM(
SELECT  cc.account_id,acc.score ,SUM(cc.cash_on_card) AS sum_card FROM client_account acc  JOIN
  credit_card cc on  cc.account_id=acc.account_id 
  GROUP BY cc.account_id, acc.score
  HAVING SUM(cc.cash_on_card)!=acc.score
 )AS results