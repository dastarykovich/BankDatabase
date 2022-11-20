USE Bank_db;
SELECT BankName FROM Bank b JOIN
	Filials f ON b.Id=f.BankId
		JOIN Cities c ON f.CityId=c.Id
			where c.CityName='New York'
			GROUP BY BankName;