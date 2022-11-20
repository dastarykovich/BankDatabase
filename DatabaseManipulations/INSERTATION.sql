USE Bank_db;

INSERT INTO SocStatuses
	VALUES (1,'Unemployed'),
			(2,'Student'),
			(3,'Worker'),
			(4,'Businessman'),
			(5,'Pensioner');

INSERT INTO Client
	VALUES('Jack Jones',3),
			('John Smith',3),
			('Joey Williams',1),
			('Boris Stsepanov',4),
			('Franklin Dilan',5),
			('Alfred Maxwel',2),
			('Gary Goodman',4);

INSERT INTO Cities
		VALUES('New York'),
				('Albuquerque'),
				('London'),
				('Los Angeles'),
				('Detroit');
INSERT INTO Bank
		VALUES ('Microsoft'),
				('American International'),
				('Mexican People Bank'),
				('NBC'),
				('Super bank');
INSERT INTO Filials 
		VALUES(1,1),--(Bank_id , City_id)
				(2,1),
				(2,1),
				(2,2),
				(2,3),
				(2,4),
				(3,1),
				(3,4),
				(4,5),
				(5,1),
				(5,5);
INSERT INTO Account
		VALUES (1,1000,1),--client_id score bank_id
				(1,500,2),
				(2,1000,2),
				(2,50,4),
				(3,5000,5),
				(4,2500,1),
				(4,10000,2),
				(4,9000,3),
				(4,3000,4),
				(5,4000,5),
				(6,500,1),
				(7,15000,2),
				(7,5000,3)

INSERT INTO CreditCard
		VALUES(200,1),--cash_on_card acc_id
				(500,1),
				(500,2),
				(1000,3),
				(50,4),
				(4980,5),
				(15,5),
				(1250,6),
				(1250,6),
				(9999,7),
				(3000,8),
				(3000,8),
				(3000,8),
				(2999,9),
				(4000,10),
				(500,11),
				(10000,12),
				(5000,12),
				(4700,13);
