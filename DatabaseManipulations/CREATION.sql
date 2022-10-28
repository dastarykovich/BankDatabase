USE bank_db;
CREATE TABLE soc_statuses
(
	soc_status_id INT NOT NULL,
	soc_status_name VARCHAR(15) NOT NULL,

	CONSTRAINT PK_soc_status_id PRIMARY KEY(soc_status_id)
)
CREATE TABLE client
(
	client_id INT IDENTITY(1,1)  NOT NULL,
	client_name VARCHAR(30) NOT NULL,
	soc_status_id INT NOT NULL,

	CONSTRAINT PK_client_id PRIMARY KEY(client_id),
	CONSTRAINT FK_soc_status_id FOREIGN KEY (soc_status_id)
		REFERENCES soc_statuses(soc_status_id)
)
CREATE TABLE cities
(
	city_id INT IDENTITY(1,1)  NOT NULL,
	city_name VARCHAR(30) NOT NULL,

	CONSTRAINT PK_city_id PRIMARY KEY(city_id)
)

CREATE TABLE bank
(
	bank_id INT IDENTITY(1,1)  NOT NULL,
	bank_name VARCHAR(30) NOT NULL,

	CONSTRAINT PK_bank_id PRIMARY KEY(bank_id),


)
CREATE TABLE filials
(
	filial_id INT IDENTITY(1,1)  NOT NULL,
	bank_id INT NOT NULL,
	city_id INT NOT NULL,

	CONSTRAINT PK_filial_id PRIMARY KEY(filial_id),
	CONSTRAINT FK_city_id FOREIGN KEY (city_id)
		REFERENCES cities(city_id),
	CONSTRAINT FK_filials_bank_id FOREIGN KEY (bank_id)
		REFERENCES bank(bank_id)
)
CREATE TABLE client_account
(
	account_id INT IDENTITY(1,1)  NOT NULL,
	client_id INT NOT NULL,
	score MONEY DEFAULT 0,
	bank_id INT NOT NULL,

	CONSTRAINT PK_acc_id PRIMARY KEY(account_id),
	CONSTRAINT FK_client_acc_id FOREIGN KEY (client_id)
		REFERENCES client(client_id),
	CONSTRAINT FK_bank_id FOREIGN KEY (bank_id)
	REFERENCES bank(bank_id)


)
CREATE TABLE credit_card
(
	card_id INT IDENTITY(1,1)  NOT NULL,
	cash_on_card MONEY DEFAULT 0,
	account_id INT REFERENCES client_account(account_id),

	CONSTRAINT PK_card_id PRIMARY KEY(card_id),

)


