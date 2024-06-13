create DATABASE FishDataBase;

USE FishDataBase;

CREATE TABLE Active(
	ID_Active INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Date_Add Date NOT NULL,
	Name VARCHAR(50) NOT NULL,
	Price VARCHAR(50) NOT NULL,
	Category VARCHAR(50) NOT NULL,
	Count_Ed VARCHAR(50) NOT NULL,
	Discription VARCHAR(50) NOT NULL
);

CREATE TABLE FishStock(
	ID_FishStock INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	ActiveID INT NOT NULL,
	Quantity INT NOT NULL,
	Pond VARCHAR(50) NOT NULL, -- пруд
	FOREIGN KEY (ActiveID) REFERENCES Active(ID_Active)
);


CREATE TABLE Roles(
	ID_Role INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	Name VARCHAR(50) NOT NULL
);

insert into Roles(Name) values
	('Admin'),
	('Рыбак');


create TABLE Users(
	ID_User INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	FirstName VARCHAR(50) NOT NULL,
	LastName VARCHAR(50) NOT NULL,
	MiddleName VARCHAR(50) NULL,
	Login VARCHAR(50) NOT NULL,
	Password VARCHAR(50) NOT NULL,
	RoleID INT NOT NULL,
	FOREIGN KEY (RoleID) REFERENCES Roles(ID_Role)
);

	insert into Users (FirstName, LastName, Login,Password,  RoleID) values 
		('Иванов', 'Олег', 'Oleg', '12', 1),
		('Попов', 'Василий', 'Vasy', '12', 2),
		('Васильев', 'Данил', 'Dan', '12', 1);


CREATE TABLE Ribalka(
	ID_Ribalka INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	Date DATE NOT NULL,
	Time TIME(0) NOT NULL,
	Duration INT NOT NULL,
	Pond VARCHAR(50) NOT NULL,
	Instructor VARCHAR(100) NOT NULL
);

CREATE TABLE FishingResults(
	ID_FishingResult INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	RibalkaID INT NOT NULL,
	ActiveID INT NOT NULL,
	QuantityCaught INT NOT NULL,
	FOREIGN KEY (RibalkaID) REFERENCES Ribalka(ID_Ribalka),
	FOREIGN KEY (ActiveID) REFERENCES Active(ID_Active)
);

CREATE TABLE SalesOrders(
	ID_SalesOrder INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	OrderDate DATE NOT NULL,
	ActiveID INT NOT NULL,
	Quantity INT NOT NULL,
	UserID INT NOT NULL,
	TotalPrice DECIMAL(10,2) NOT NULL,
	OrderStatus VARCHAR(20) NOT NULL,
	FOREIGN KEY (UserID) REFERENCES Users(ID_User),
	FOREIGN KEY (ActiveID) REFERENCES Active(ID_Active)
);
