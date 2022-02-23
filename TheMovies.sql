CREATE TABLE MOVIE (
    MovieID int NOT NULL IDENTITY PRIMARY KEY,
    Title varchar(255),
    Duration varchar(255),
    Director varchar(255),
	Genre varchar(255),
    Premierdate datetime2
);

CREATE TABLE CITY (
    CityID int NOT NULL IDENTITY PRIMARY KEY,
    CityName varchar(255)
);
CREATE TABLE CINEMA (
    CinemaID int NOT NULL IDENTITY PRIMARY KEY,
    FK_City int,
    CinemaName varchar(255),

	FOREIGN KEY (FK_City) REFERENCES CITY(CityID)
);
CREATE TABLE SHOW (
    ShowID int NOT NULL IDENTITY PRIMARY KEY,
	FK_CinemaID int,
	FK_MovieID int,
    ShowTime datetime2,
	FOREIGN KEY (FK_CinemaID) REFERENCES CINEMA(CinemaID),
	FOREIGN KEY (FK_MovieID) REFERENCES MOVIE(MovieID)    
);

CREATE TABLE BOOKING (
    BookingID int NOT NULL IDENTITY PRIMARY KEY,
    FK_ShowID int,
    Mail varchar(255),
    Phone int,
	FOREIGN KEY (FK_ShowID) REFERENCES SHOW(ShowID)	

);



