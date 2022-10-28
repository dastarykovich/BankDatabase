USE bank_db;
SELECT bank_name FROM bank b JOIN
	filials f ON b.bank_id=f.bank_id
		JOIN cities c ON f.city_id=c.city_id
			where c.city_name='New York'
			GROUP BY bank_name;