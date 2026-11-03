-- =========================================================
-- Welcome to your Cloud MS SQL Server Environment!
-- Run these queries directly in VS Code or in CloudBeaver.
-- =========================================================

-- 1. Check Server Version and Status
SELECT 
    @@SERVERNAME AS [ServerName],
    @@VERSION AS [SQLServerVersion],
    GETDATE() AS [CurrentDateTime];

-- 2. Create a Sample Database
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'StudentDB')
BEGIN
    CREATE DATABASE StudentDB;
    PRINT 'Database StudentDB created successfully!';
END
GO

USE StudentDB;
GO

-- 3. Create a Sample Students Table
IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'Students')
BEGIN
    CREATE TABLE Students (
        StudentID INT IDENTITY(1,1) PRIMARY KEY,
        FirstName NVARCHAR(50) NOT NULL,
        LastName NVARCHAR(50) NOT NULL,
        Email NVARCHAR(100) UNIQUE,
        EnrollmentDate DATE DEFAULT GETDATE()
    );

    INSERT INTO Students (FirstName, LastName, Email)
    VALUES 
        ('Israel', 'Israeli', 'israel@example.com'),
        ('Noam', 'Gilboa', 'noam@example.com'),
        ('Dana', 'Cohen', 'dana@example.com');
END
GO

-- 4. Query the sample data
SELECT * FROM Students;
