use bank_db

SELECT ss.soc_status_name,COUNT(cc.card_id) AS amount_of_cards FROM credit_card cc JOIN
	client_account acc ON cc.account_id=acc.account_id 
		JOIN client cl ON cl.client_id=acc.client_id
			JOIN soc_statuses ss ON ss.soc_status_id=cl.soc_status_id
	GROUP BY (ss.soc_status_name)



	SELECT soc_status_id,
(SELECT COUNT(*) FROM soc_statuses first_social_status 
JOIN client ON client.soc_status_id = first_social_status.soc_status_id
JOIN client_account ON client.client_id=client_account.client_id
JOIN credit_card ON client_account.account_id = credit_card.account_id
WHERE first_social_status.soc_status_id = second_social_status.soc_status_id) AS 'count'
FROM soc_statuses second_social_status