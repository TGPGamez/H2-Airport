CREATE TABLE Airport(
	IATA VARCHAR(8) PRIMARY KEY NOT NULL,
	Name VARCHAR(60) NOT NULL,
	Country VARCHAR(60) NOT NULL
);

CREATE TABLE Airline(
	Name VARCHAR(60) PRIMARY KEY NOT NULL,
	Headquarter VARCHAR(60) NOT NULL
);

CREATE TABLE FlightRoute(
	Id INTEGER IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FromIATA VARCHAR(8) NOT NULL,
	DestinationIATA VARCHAR(8) NOT NULL,
	AirlineOwner VARCHAR(60) NOT NULL,
	AirlineOperator VARCHAR(60) NOT NULL,

	FOREIGN KEY(FromIATA) REFERENCES Airport(IATA),
	FOREIGN KEY(DestinationIATA) REFERENCES Airport(IATA),
	FOREIGN KEY(AirlineOwner) REFERENCES Airline(Name),
	FOREIGN KEY(AirlineOperator) REFERENCES Airline(Name)
);



INSERT INTO Airport(IATA, Name, Country) VALUES ('CPH', 'København', 'Denmark');
INSERT INTO Airport(IATA, Name, Country) VALUES ('LAX', 'Los Angeles International Airport', 'USA');
INSERT INTO Airport(IATA, Name, Country) VALUES ('LHR', 'Heathrow', 'United Kingdom');
INSERT INTO Airport(IATA, Name, Country) VALUES ('AAL', 'Aalborg', 'Denmark');

INSERT INTO Airline(Name, Headquarter) VALUES ('Qatar Airlines', 'Doha');
INSERT INTO Airline(Name, Headquarter) VALUES ('Singapore Airlines', 'Singapore');
INSERT INTO Airline(Name, Headquarter) VALUES ('Ana All Nippon Airlines', 'Tokyo');
INSERT INTO Airline(Name, Headquarter) VALUES ('Cathay Pacific Airlines', 'Hong Kong');
INSERT INTO Airline(Name, Headquarter) VALUES ('Emirates', 'Dubai');
INSERT INTO Airline(Name, Headquarter) VALUES ('SAS', 'Stockholm');
INSERT INTO Airline(Name, Headquarter) VALUES ('Air Nostrum', 'Valencia');

INSERT INTO FlightRoute(FromIATA, DestinationIATA, AirlineOwner, AirlineOperator) 
VALUES ('CPH', 'LHR', 'SAS', 'SAS');
INSERT INTO FlightRoute(FromIATA, DestinationIATA, AirlineOwner, AirlineOperator) 
VALUES ('CPH', 'AAL', 'SAS', 'Air Nostrum');
INSERT INTO FlightRoute(FromIATA, DestinationIATA, AirlineOwner, AirlineOperator) 
VALUES ('LHR', 'LAX', 'Qatar Airlines', 'Emirates');


SELECT * FROM Airline

SELECT * FROM Airport

SELECT * FROM FlightRoute