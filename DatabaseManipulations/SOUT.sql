USE bank_db;
select *FROM soc_statuses;
SELECT * FROM client JOIN soc_statuses
	ON client.soc_status_id=soc_statuses.soc_status_id;
SELECT *FROM cities;
SELECT *FROM bank b JOIN filials f
	ON b.bank_id=f.bank_id
		JOIN cities c 
			ON c.city_id=f.city_id;

SELECT * FROM client_account a JOIN client c
	ON a.client_id=c.client_id
		JOIN bank b
			ON b.bank_id=a.bank_id;

SELECT *FROM credit_card cc JOIN client_account ca
	on cc.account_id=ca.account_id
		JOIN client cl 
			on cl.client_id=ca.client_id;