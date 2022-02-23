CREATE TABLE Owner (
    OwnerID int NOT NULL IDENTITY PRIMARY KEY,
    OwnerFirstName varchar(255),
	OwnerLastName varchar(255),
	OwnerPhone varchar(255),
	OwnerEmail varchar(255)
);
CREATE TABLE Pet (
    PetID int NOT NULL IDENTITY PRIMARY KEY,
    PetName varchar(255),
    PetType varchar(255),
    PetBreed varchar(255),
	PetWeight FLOAT,
	PetDOB date,
	FK_OwnerID int,
	FOREIGN KEY (FK_OwnerID) REFERENCES Owner(OwnerID)
);
CREATE TABLE Receipt (
    ReceiptID int NOT NULL IDENTITY PRIMARY KEY,
    Service varchar(255),
    Date datetime2,
	Charge FLOAT,
	FK_OwnerID int,
	FOREIGN KEY (FK_OwnerID) REFERENCES Owner(OwnerID)
);