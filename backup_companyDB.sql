CREATE DATABASE CompanyDB;

USE CompanyDB;

CREATE TABLE Employee
(
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);
INSERT INTO Employee(emp_name,department,salary,joining_date)
VALUES
('Aditi','Developer',45000,'2026-01-10'),
('Rahul','HR',35000,'2025-08-15'),
('Sneha','Testing',40000,'2024-12-01'),
('Aman','Developer',50000,'2026-02-20'),
('Priya','Manager',65000,'2023-07-15');

SELECT * FROM Employee;

DROP DATABASE CompanyDB;

USE CompanyDB;