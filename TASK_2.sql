USE Bank_db;
SELECT  CashOnCard,cl.ClientName,b.BankName FROM CreditCard cc JOIN
		Account acc on cc.AccountId=acc.Id
			JOIN Bank b ON b.Id=acc.BankId
				JOIN Client cl ON acc.ClientId=cl.Id;

