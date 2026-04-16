DROP TABLE IF EXISTS CUSTOMERS;

CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100),
    City VARCHAR(50),
    LastPurchaseDate DATE,
    Status VARCHAR(20),
    Gender VARCHAR(10),
    DateOfBirth DATE,
    Points INT DEFAULT 0,
    Address VARCHAR(255)
);

INSERT INTO CUSTOMERS (FullName, Email, City, LastPurchaseDate, Status)
VALUES
(N'Nguyễn Văn A', 'anv@gmail.com', N'Hà Nội', '2025-05-20', 'Active'),
(N'Trần Thị B', 'btt@gmail.com', N'Hà Nội', '2026-02-10', 'Active'),
(N'Lê Văn C', NULL, N'Hà Nội', '2025-01-15', 'Active'),
(N'Phạm Minh D', 'dpm@gmail.com', N'Hà Nội', '2024-12-01', 'Locked'),
(N'Hoàng An E', 'eha@gmail.com', N'TP HCM', '2025-03-01', 'Active');

SELECT CustomerID, FullName, Email, City, LastPurchaseDate, Status FROM CUSTOMERS
WHERE 
    (City = N'Hà Nội')
    AND Email IS NOT NULL 
    AND Email != ''
    AND Status = 'Active'
    AND LastPurchaseDate < DATE_SUB(NOW(), INTERVAL 6 MONTH);