create database EmployeeManagementSystem;
use EmployeeManagementSystem;

CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    DateOfBirth DATE,
    HireDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

CREATE TABLE Salaries (
    SalaryID INT PRIMARY KEY AUTO_INCREMENT,
    EmployeeID INT,
    SalaryAmount DECIMAL(10, 2),
    EffectiveDate DATE,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES 
(1, 'Human Resources'),
(2, 'Finance'),
(3, 'Engineering'),
(4, 'Marketing'),
(5, 'Sales'),
(6, 'IT'),
(7, 'Customer Service'),
(8, 'Research and Development'),
(9, 'Legal'),
(10, 'Administration');

INSERT INTO Employees (EmployeeID, FirstName, LastName, DepartmentID, DateOfBirth, HireDate) VALUES 
(1, 'Aarav', 'Sharma', 1, '1985-05-15', '2010-01-10'),
(2, 'Vivaan', 'Gupta', 2, '1990-06-20', '2015-02-15'),
(3, 'Aditya', 'Reddy', 3, '1988-07-25', '2012-03-20'),
(4, 'Ananya', 'Kumar', 4, '1992-08-30', '2016-04-18'),
(5, 'Kabir', 'Mehta', 5, '1987-09-10', '2011-05-05'),
(6, 'Ishaan', 'Patel', 6, '1989-10-12', '2014-06-22'),
(7, 'Saanvi', 'Verma', 7, '1995-11-15', '2019-07-30'),
(8, 'Kaira', 'Bhatia', 8, '1991-12-18', '2013-08-12'),
(9, 'Riya', 'Chopra', 9, '1984-01-20', '2009-09-01'),
(10, 'Mira', 'Joshi', 10, '1993-02-25', '2017-10-14'),
(11, 'Nikhil', 'Singh', 1, '1986-03-30', '2011-11-11'),
(12, 'Pooja', 'Ahuja', 2, '1982-04-05', '2010-12-25'),
(13, 'Raj', 'Malhotra', 3, '1994-05-10', '2015-01-20'),
(14, 'Tanya', 'Kapoor', 4, '1990-06-15', '2016-02-05'),
(15, 'Sam', 'Chopra', 5, '1988-07-20', '2014-03-30'),
(16, 'Karan', 'Dutta', 6, '1995-08-25', '2018-04-15'),
(17, 'Neha', 'Sethi', 7, '1992-09-30', '2019-05-10'),
(18, 'Rohit', 'Ghosh', 8, '1987-10-05', '2013-06-20'),
(19, 'Diya', 'Rao', 9, '1994-11-10', '2016-07-25'),
(20, 'Krishna', 'Nair', 10, '1991-12-15', '2017-08-30'),
(21, 'Arjun', 'Nanda', 1, '1983-01-12', '2012-03-05'),
(22, 'Aditi', 'Desai', 2, '1996-02-22', '2017-04-15'),
(23, 'Vikram', 'Chawla', 3, '1984-03-18', '2011-05-25'),
(24, 'Ritika', 'Sharma', 4, '1990-04-30', '2018-06-30'),
(25, 'Kartik', 'Singhal', 5, '1987-05-05', '2013-07-15'),
(26, 'Sneha', 'Tiwari', 6, '1992-06-15', '2019-08-25'),
(27, 'Dev', 'Mishra', 7, '1988-07-20', '2015-09-10'),
(28, 'Mansi', 'Jain', 8, '1991-08-25', '2016-10-20'),
(29, 'Uday', 'Bansal', 9, '1995-09-30', '2020-11-15'),
(30, 'Lavanya', 'Agarwal', 10, '1983-10-05', '2012-12-25'),
(31, 'Amol', 'Pawar', 1, '1989-11-12', '2017-01-30'),
(32, 'Priya', 'Reddy', 2, '1993-12-18', '2014-02-28'),
(33, 'Siddharth', 'Kohli', 3, '1985-01-25', '2016-03-10'),
(34, 'Tisha', 'Mohan', 4, '1990-02-20', '2018-04-15'),
(35, 'Gaurav', 'Shukla', 5, '1986-03-15', '2019-05-20'),
(36, 'Ayesha', 'Bhatia', 6, '1991-04-10', '2015-06-25'),
(37, 'Vishal', 'Thakur', 7, '1995-05-05', '2020-07-30'),
(38, 'Chaitanya', 'Yadav', 8, '1992-06-01', '2013-08-15'),
(39, 'Neeraj', 'Gautam', 9, '1994-07-08', '2016-09-20'),
(40, 'Tanvi', 'Malik', 10, '1988-08-15', '2011-10-25'),
(41, 'Rahul', 'Kumar', 1, '1991-09-20', '2015-11-30'),
(42, 'Meera', 'Sen', 2, '1993-10-25', '2017-12-05'),
(43, 'Shivam', 'Sood', 3, '1986-11-30', '2019-01-10'),
(44, 'Kavya', 'Sharma', 4, '1990-12-15', '2016-02-18'),
(45, 'Advik', 'Rao', 5, '1985-01-25', '2014-03-25'),
(46, 'Rohan', 'Malhotra', 6, '1992-02-15', '2020-04-30'),
(47, 'Aanya', 'Kapoor', 7, '1987-03-20', '2015-05-10'),
(48, 'Kunal', 'Singh', 8, '1995-04-05', '2019-06-15'),
(49, 'Simran', 'Verma', 9, '1988-05-10', '2012-07-20'),
(50, 'Devansh', 'Gupta', 10, '1994-06-15', '2016-08-25');

INSERT INTO Salaries (EmployeeID, SalaryAmount, EffectiveDate) VALUES 
(1, 60000.00, '2010-01-10'),
(2, 70000.00, '2015-02-15'),
(3, 80000.00, '2012-03-20'),
(4, 75000.00, '2016-04-18'),
(5, 62000.00, '2011-05-05'),
(6, 65000.00, '2014-06-22'),
(7, 55000.00, '2019-07-30'),
(8, 58000.00, '2013-08-12'),
(9, 90000.00, '2009-09-01'),
(10, 72000.00, '2017-10-14'),
(11, 61000.00, '2011-11-11'),
(12, 69000.00, '2010-12-25'),
(13, 80000.00, '2015-01-20'),
(14, 75000.00, '2016-02-05'),
(15, 68000.00, '2014-03-30'),
(16, 56000.00, '2018-04-15'),
(17, 60000.00, '2019-05-10'),
(18, 59000.00, '2013-06-20'),
(19, 72000.00, '2016-07-25'),
(20, 75000.00, '2017-08-30'),
(21, 64000.00, '2012-03-05'),
(22, 70000.00, '2017-04-15'),
(23, 78000.00, '2011-05-25'),
(24, 85000.00, '2018-06-30'),
(25, 61000.00, '2013-07-15'),
(26, 67000.00, '2019-08-25'),
(27, 59000.00, '2015-09-10'),
(28, 63000.00, '2016-10-20'),
(29, 55000.00, '2020-11-15'),
(30, 62000.00, '2012-12-25'),
(31, 68000.00, '2017-01-30'),
(32, 74000.00, '2014-02-28'),
(33, 70000.00, '2016-03-10'),
(34, 78000.00, '2018-04-15'),
(35, 65000.00, '2019-05-20'),
(36, 62000.00, '2015-06-25'),
(37, 58000.00, '2020-07-30'),
(38, 62000.00, '2013-08-15'),
(39, 70000.00, '2016-09-20'),
(40, 72000.00, '2011-10-25'),
(41, 75000.00, '2015-11-30'),
(42, 78000.00, '2017-12-05'),
(43, 80000.00, '2019-01-10'),
(44, 74000.00, '2016-02-18'),
(45, 68000.00, '2014-03-25'),
(46, 65000.00, '2020-04-30'),
(47, 60000.00, '2015-05-10'),
(48, 59000.00, '2019-06-15'),
(49, 70000.00, '2012-07-20'),
(50, 72000.00, '2016-08-25');

-- 1) Retrieve the first and last names of all employees born between 1980 and 1990.--
select firstName,lastName
from employees
WHERE DateOfBirth > '1980-01-01' AND '1990-12-31';

-- 2) Find the first and last names of employees who share the same last name as at least one other employee. --
SELECT FirstName, LastName
FROM Employees
WHERE LastName IN (
    SELECT LastName
    FROM Employees
    GROUP BY LastName
    HAVING COUNT(*) > 1);

-- 3) Retrieve the first names of employees who were hired after the youngest employee was born --
SELECT FirstName
FROM Employees
WHERE HireDate > (SELECT MIN(DateOfBirth) FROM Employees);

-- 4) Find the employee with the maximum age in the company.
SELECT FirstName, LastName,DateOfBirth
FROM Employees
WHERE DateOfBirth = (SELECT MIN(DateOfBirth) FROM Employees);

-- 5) Find the employee who have been with the company the longest. --
SELECT FirstName, LastName, HireDate
FROM Employees
ORDER BY HireDate ASC
LIMIT 1;

-- 6) List employees in descending order by their age, showing only the top 10 oldest. --
SELECT FirstName, LastName, DateOfBirth
FROM Employees
ORDER BY DateOfBirth ASC
LIMIT 10;

-- 7) Find the employee with the highest salary. --
SELECT FirstName, LastName, SalaryAmount
FROM Employees
JOIN Salaries ON Employees.EmployeeID = Salaries.EmployeeID
ORDER BY SalaryAmount DESC
LIMIT 1;

 -- 8) Count the number of employees in each department.--
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS EmployeeCount
FROM Departments as d
LEFT JOIN Employees as e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName;

-- 9) List all employees, showing their ages calculated from their DateOfBirth.--
SELECT FirstName, LastName, YEAR(CURRENT_DATE) - YEAR(DateOfBirth) AS Age
FROM Employees;

-- 10) Find the employee who were born on the same date --
SELECT FirstName, LastName, DateOfBirth
FROM Employees
WHERE DateOfBirth IN (
    SELECT DateOfBirth
    FROM Employees
    GROUP BY DateOfBirth
    HAVING COUNT(*) > 1
);

-- 11) Retrieve the employee with the most recent hire date.--
SELECT FirstName, LastName, HireDate
FROM Employees
ORDER BY HireDate DESC
LIMIT 1;

-- 12) Retrieve the last name of employees, but with the first character lower  --
SELECT FirstName, CONCAT(lower(LEFT(LastName, 1)), LOWER(SUBSTRING(LastName, 2))) AS loweredLastName
FROM Employees;

-- 13) Find employees with first names longer than their last names. --
SELECT FirstName, LastName
FROM Employees
WHERE LENGTH(FirstName) > LENGTH(LastName);

-- 14) Find the average age of employees. --
SELECT round(AVG(YEAR(CURRENT_DATE) - YEAR(DateOfBirth))) AS AverageAge
FROM Employees;

-- 15) Count the number of employees hired each year. --
SELECT YEAR(HireDate) AS HireYear, COUNT(*) AS NumberOfHires
FROM Employees
GROUP BY YEAR(HireDate);

-- 16)Find the number of employees with the same last name.
SELECT lastName, COUNT(*) AS Count
FROM Employees
GROUP BY lastName
HAVING COUNT(*) > 1;

-- 17) Find employees with salaries that are less than the average salary(68120).--
SELECT FirstName, LastName, SalaryAmount
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE s.SalaryAmount < (SELECT AVG(SalaryAmount) FROM Salaries);

-- 18) Get employees who do not have a salary record.-- 
SELECT FirstName, LastName
FROM Employees e
LEFT JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE s.SalaryAmount IS NULL;

-- 19)Calculate age and salary of employees older than 30. Query must return First name last name age and salary --
SELECT firstname,lastname,(YEAR(CURRENT_DATE) - YEAR(e.DateOfBirth)) as AGE,s.SalaryAmount AS salary
FROM Employees e
JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE (YEAR(CURRENT_DATE) - YEAR(e.DateOfBirth)) > 30;

-- 20)Find employees who were born in the 1990s.
SELECT FirstName, LastName, DateOfBirth
FROM Employees
WHERE YEAR(DateOfBirth) BETWEEN 1990 AND 1999;

-- Joins
-- Inner Join
-- 21) Get a list of employees along with their hire dates, but only those hired in 2015 --
SELECT e.FirstName, e.LastName, e.HireDate
FROM Employees e
INNER JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE YEAR(e.HireDate) = 2015;

-- 22)Retrieve employee names and their respective salaries, filtering out those with salaries below 30,000.
SELECT e.FirstName, e.LastName, s.SalaryAmount
FROM Employees e
INNER JOIN Salaries s ON e.EmployeeID = s.EmployeeID
WHERE s.SalaryAmount >= 30000;

-- left Join
-- 23)Retrieve all employees and their salaries,show the difference between the highest salary in the department and each employee's salary.
SELECT e.FirstName, e.LastName, s.SalaryAmount,
       (SELECT MAX(s2.SalaryAmount)
        FROM Salaries s2
        JOIN Employees e2 ON s2.EmployeeID = e2.EmployeeID
        WHERE e2.DepartmentID = e.DepartmentID) - s.SalaryAmount AS SalaryDifference
FROM Employees e
LEFT JOIN Salaries s ON e.EmployeeID = s.EmployeeID;

-- 24)Get a list of all employees and their salaries and identify the maximum salary from their respective departments.
SELECT e.FirstName, e.LastName, s.SalaryAmount,
       (SELECT MAX(s2.SalaryAmount)
        FROM Salaries s2
        JOIN Employees e2 ON s2.EmployeeID = e2.EmployeeID
        WHERE e2.DepartmentID = e.DepartmentID) AS MaxDepartmentSalary
FROM Employees e
LEFT JOIN Salaries s ON e.EmployeeID = s.EmployeeID;

-- Right Join
-- 25) Find the number of employees in each department,including department name
SELECT d.DepartmentName, COUNT(e.EmployeeID) AS NumberOfEmployees
FROM Departments d
RIGHT JOIN Employees e ON d.DepartmentID = e.DepartmentID
GROUP BY d.DepartmentName;

-- Self Join
-- 26)Retrieve employees who have the same hire date as any other employee.
SELECT e1.FirstName, e1.LastName, e1.HireDate
FROM Employees e1
JOIN Employees e2 ON e1.HireDate = e2.HireDate
WHERE e1.EmployeeID <> e2.EmployeeID;

-- union
-- 27) List all employees and their departments
SELECT 
    e.EmployeeID, 
    e.FirstName, 
    e.LastName, 
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
UNION
SELECT 
    NULL AS EmployeeID, 
    NULL AS FirstName, 
    NULL AS LastName, 
    d.DepartmentName
FROM 
    Departments d
WHERE 
    d.DepartmentID NOT IN (SELECT DepartmentID FROM Employees);
    
select *
from employees;





