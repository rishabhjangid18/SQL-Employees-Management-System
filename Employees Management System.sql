



CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50) NOT NULL
);


CREATE TABLE Roles (
    RoleID INT PRIMARY KEY,
    RoleName VARCHAR(50) NOT NULL
);


CREATE TABLE EmployeesTemp (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DepartmentID INT,
    RoleID INT,
    Salary DECIMAL(10, 2),
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID),
    FOREIGN KEY (RoleID) REFERENCES Roles(RoleID)
);



INSERT INTO Departments (DepartmentID, DepartmentName)
VALUES (1, 'Human Resources'),
       (2, 'IT'),
       (3, 'Finance');


INSERT INTO Roles (RoleID, RoleName)
VALUES (101, 'Manager'),
       (102, 'Developer'),
       (103, 'Analyst');



INSERT INTO EmployeesTemp (EmployeeID, FirstName, LastName, DepartmentID, RoleID, Salary, HireDate)
VALUES (1, 'Rishabh', 'Jangid', 1, 101, 60000, '2023-01-15'),
       (2, 'Rajat', 'Tank', 2, 102, 75000, '2022-04-25'),
       (3, 'Sumit', 'Pareek', 2, 102, 75000, '2022-04-25'),
       (4, 'Vanshika', 'Gupta', 2, 101, 75000, '2022-04-25'),
       (5, 'Uttam', 'Solanki', 2, 101, 75000, '2022-04-25'),
       (6, 'Sumit', 'Singh', 3, 103, 50000, '2021-06-19');


select* from EmployeesTemp;
select* from Roles;
select* from Departments;