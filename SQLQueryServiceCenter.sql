CREATE DATABASE ServiceCenter;
GO
USE ServiceCenter;
GO
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
	SecondName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Email NVARCHAR(100),
    Address NVARCHAR(200)
);
CREATE TABLE DeviceTypes (
    DeviceTypeID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(500)
);
CREATE TABLE Manufacturers (
    ManufacturerID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL, 
    Country NVARCHAR(50)
);
CREATE TABLE Devices (
    DeviceID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT NOT NULL,
    DeviceTypeID INT NOT NULL,
    ManufacturerID INT NOT NULL,
    Model NVARCHAR(100) NOT NULL,
    SerialNumber NVARCHAR(100),
	YearOfManufacture DATE,
    PurchaseDate DATE,
    WarrantyExpiryDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DeviceTypeID) REFERENCES DeviceTypes(DeviceTypeID),
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);
CREATE TABLE Technicians (
    TechnicianID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
	SecondName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Phone VARCHAR(20),
    Email NVARCHAR(100),
    Specialization NVARCHAR(100), 
    HireDate DATE,
	Salary DECIMAL(10,2)
);
CREATE TABLE RepairStatuses (
    StatusID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL, 
    Description NVARCHAR(200)
);
CREATE TABLE ServiceOrders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    DeviceID INT NOT NULL,
    TechnicianID INT,
    StatusID INT NOT NULL,
    ProblemDescription NVARCHAR(1000) NOT NULL,
    AcceptanceDate DATETIME NOT NULL DEFAULT GETDATE(),
    CompletionDate DATETIME,
    EstimatedCost DECIMAL(10, 2),
    FinalCost DECIMAL(10, 2),
    FOREIGN KEY (DeviceID) REFERENCES Devices(DeviceID),
    FOREIGN KEY (TechnicianID) REFERENCES Technicians(TechnicianID),
    FOREIGN KEY (StatusID) REFERENCES RepairStatuses(StatusID)
);
CREATE TABLE SpareParts (
    PartID INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL, -- "Ёкран iPhone 13", "SSD 1TB" и т.д.
    ManufacturerID INT,
    Price DECIMAL(10, 2) NOT NULL,
    QuantityInStock INT DEFAULT 0,
    FOREIGN KEY (ManufacturerID) REFERENCES Manufacturers(ManufacturerID)
);
CREATE TABLE UsedParts (
    UsedPartID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    PartID INT NOT NULL,
    Quantity INT NOT NULL DEFAULT 1,
    FOREIGN KEY (OrderID) REFERENCES ServiceOrders(OrderID),
    FOREIGN KEY (PartID) REFERENCES SpareParts(PartID)
);