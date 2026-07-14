-- ===========================================
-- Project: MySQL Backup and Restore Plan
-- Database: CompanyDB
-- Author: Aditi Shirbhate
-- ===========================================

-- Step 1: Create Database
CREATE DATABASE IF NOT EXISTS CompanyDB;

-- Step 2: Select Database
USE CompanyDB;

-- Step 3: Create Employee Table
CREATE TABLE IF NOT EXISTS Employee
(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    joining_date DATE
);

-- Step 4: Insert Employee Records
INSERT INTO Employee(emp_name,department,salary,joining_date)
VALUES
('Aditi','Developer',45000,'2026-01-10'),
('Rahul','HR',35000,'2025-08-15'),
('Sneha','Testing',40000,'2024-12-01'),
('Aman','Developer',50000,'2026-02-20'),
('Priya','Manager',65000,'2023-07-15');

-- Step 5: Verify Data
SELECT * FROM Employee;

-- ===========================================
-- BACKUP
-- Export this database using:
-- Server -> Data Export
-- ===========================================

-- ===========================================
-- RESTORE TEST
-- ===========================================

-- Drop database to test restore
DROP DATABASE CompanyDB;

-- NOTE:
-- Do NOT write:
-- USE CompanyDB;
-- after DROP DATABASE.
--
-- Restore the backup first using
-- Server -> Data Import
--
-- After the restore completes,
-- run the statements below.
-- ===========================================

USE CompanyDB;

SHOW TABLES;

SELECT * FROM Employee;