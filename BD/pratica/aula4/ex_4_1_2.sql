IF OBJECT_ID('Can_land', 'U') IS NOT NULL
    DROP TABLE Can_land;

IF OBJECT_ID('Fare', 'U') IS NOT NULL
    DROP TABLE Fare;

IF OBJECT_ID('Seat', 'U') IS NOT NULL
    DROP TABLE Seat;

IF OBJECT_ID('Leg_Instance', 'U') IS NOT NULL
    DROP TABLE Leg_Instance;
	
IF OBJECT_ID('Flight_Leg', 'U') IS NOT NULL
    DROP TABLE Flight_Leg;

IF OBJECT_ID('Flight', 'U') IS NOT NULL
    DROP TABLE Flight;

IF OBJECT_ID('Airplane', 'U') IS NOT NULL
    DROP TABLE Airplane;

IF OBJECT_ID('Airplane_Type', 'U') IS NOT NULL
    DROP TABLE Airplane_Type;

IF OBJECT_ID('Airport', 'U') IS NOT NULL
    DROP TABLE Airport;

CREATE TABLE Airport (
    Airport_code CHAR(3),
    City VARCHAR(20),
    State CHAR(2),
    Name VARCHAR(20),
    PRIMARY KEY (Airport_code),
    CONSTRAINT Name_unique UNIQUE (Name)
);

CREATE TABLE Airplane_Type (
    Company VARCHAR(20),
    Type_name VARCHAR(20),
    Max_seats INT,
    PRIMARY KEY (Type_name)
);

CREATE TABLE Airplane (
    Airplane_id INT,
    Total_no_of_seats INT,
    airplane_type_name VARCHAR(20),
    PRIMARY KEY (Airplane_id),
    FOREIGN KEY (airplane_type_name) REFERENCES Airplane_Type(Type_name)
);

CREATE TABLE Flight (
    number INT,
    airline VARCHAR(20),
    weekdays VARCHAR(20),
    PRIMARY KEY (number)
);



CREATE TABLE Flight_Leg (
    flight_number INT,
    Leg_number INT,
    airport_code CHAR(3),
    PRIMARY KEY (Leg_number),
    FOREIGN KEY (flight_number) REFERENCES Flight(number),
    FOREIGN KEY (airport_code) REFERENCES Airport(Airport_code)
);


CREATE TABLE Leg_Instance (
    Date DATE,
    No_of_avail_seats INT,
    flight_number INT,
    airplane_id INT,
    flight_leg_no INT,
    PRIMARY KEY (Date),
    FOREIGN KEY (flight_number) REFERENCES Flight(number),
    FOREIGN KEY (airplane_id) REFERENCES Airplane(Airplane_id),
    FOREIGN KEY (flight_leg_no) REFERENCES Flight_Leg(Leg_number)
);

CREATE TABLE Seat (
    Seat_no INT,
    flight_number INT,
    Leg_Instance_date DATE,
    PRIMARY KEY (Seat_no),
    FOREIGN KEY (flight_number) REFERENCES Flight(number),
    FOREIGN KEY (Leg_Instance_date) REFERENCES Leg_Instance(Date)
);

CREATE TABLE Fare (
    code INT,
    amount INT,
    flight_number INT,
    restrictions VARCHAR(20),
    PRIMARY KEY (code),
    FOREIGN KEY (flight_number) REFERENCES Flight(number)
);

CREATE TABLE Can_land (
    airport_code CHAR(3),
    airplane_type_name VARCHAR(20),
    FOREIGN KEY (airport_code) REFERENCES Airport(Airport_code),
    FOREIGN KEY (airplane_type_name) REFERENCES Airplane_Type(Type_name),
    PRIMARY KEY (airport_code),
	PRIMARY KEY (airplane_type_name)
);