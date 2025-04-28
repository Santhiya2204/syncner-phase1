create database HospitalManagement;
use HospitalManagement
CREATE TABLE Room (
    RoomID INT PRIMARY KEY,
    RoomType VARCHAR(50),
    Capacity INT,
    Availability BIT  
);
CREATE TABLE Doctor (
    DoctorID INT PRIMARY KEY,
    Name VARCHAR(100),
    Specialization VARCHAR(100),
    ContactInfo VARCHAR(100),
    Salary DECIMAL(10, 2)
);
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(100)
);
CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    Name VARCHAR(100),
    Role VARCHAR(100),
    ContactInfo VARCHAR(100),
    AdminID INT,
    FOREIGN KEY (AdminID) REFERENCES Admin(AdminID)
);

CREATE TABLE Patient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT,
    Gender VARCHAR(10),
    ContactInfo VARCHAR(100),
    AdmittedDate DATE,
    DoctorID INT,
    RoomID INT,
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (RoomID) REFERENCES Room(RoomID)
);

CREATE TABLE Cashier (
    CashierID INT PRIMARY KEY,
    Name VARCHAR(100),
    ContactInfo VARCHAR(100)
);

CREATE TABLE Bill (
    BillID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    CashierID INT,
    TotalAmount DECIMAL(10, 2),
    Date DATE,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    FOREIGN KEY (CashierID) REFERENCES Cashier(CashierID)
);

INSERT INTO Room (RoomID, RoomType, Capacity, Availability)
VALUES
(101, 'Single', 1, 1),  
(102, 'Double', 2, 1);   

INSERT INTO Doctor (DoctorID, Name, Specialization, ContactInfo, Salary)
VALUES
(1, 'Dr. John Smith', 'Cardiologist', '123-456-7890', 120000),
(2, 'Dr. Sarah Brown', 'Neurologist', '987-654-3210', 150000);

INSERT INTO Admin (AdminID, Name, ContactInfo)
VALUES
(1, 'Alice Johnson', 'admin@hospital.com');

INSERT INTO Staff (StaffID, Name, Role, ContactInfo, AdminID)
VALUES
(1, 'James White', 'Nurse', 'nurse1@hospital.com', 1),
(2, 'Emily Green', 'Cleaner', 'cleaner1@hospital.com', 1);

INSERT INTO Patient (PatientID, Name, Age, Gender, ContactInfo, AdmittedDate, DoctorID, RoomID)
VALUES
(1, 'John Doe', 45, 'Male', 'john.doe@example.com', '2025-03-20', 1, 101),
(2, 'Jane Smith', 30, 'Female', 'jane.smith@example.com', '2025-03-22', 2, 102);

INSERT INTO Cashier (CashierID, Name, ContactInfo)
VALUES
(1, 'Robert Brown', 'cashier1@hospital.com');

-- Insert Bills
INSERT INTO Bill (BillID, PatientID, DoctorID, CashierID, TotalAmount, Date)
VALUES
(1, 1, 1, 1, 250.00, '2025-03-23');
