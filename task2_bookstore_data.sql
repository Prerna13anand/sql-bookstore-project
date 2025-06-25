-- PART 1: CREATE THE DATABASE TABLES (FROM TASK 1)
-- We need tables before we can put data in them.
 
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(50), -- This column is allowed to have missing values (NULL)
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT NOT NULL DEFAULT 0
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Order_Items (
    OrderItemID INTEGER PRIMARY KEY,
    OrderID INT,
    BookID INT,
    Quantity INT NOT NULL,
    PriceAtPurchase DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID) ON DELETE CASCADE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

-- PART 2: ADD DATA TO THE TABLES (THE `INSERT` COMMAND)
-- This is the main part of Task 2.
-- Adding 3 customers to the Customers table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email) VALUES
(1, 'Arav', 'Mehta', 'arav.m@example.com'),
(2, 'Arnav', 'Joshi', 'arnav.j@example.com'),
(3, 'Vishu', 'Gupta', 'vishu.g@example.com');

-- Adding 4 books to the Books table
-- Note: The Genre for '1984' is NULL, showing how we handle missing data.
INSERT INTO Books (BookID, Title, Author, Genre, Price, StockQuantity) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 'Adventure', 12.99, 60),
(102, 'A Suitable Boy', 'Vikram Seth', 'Novel', 19.99, 25),
(103, '1984', 'George Orwell', NULL, 9.50, 80),
(104, 'Malgudi Days', 'R. K. Narayan', 'Fiction', 11.00, 45);

-- Adding 2 orders to the Orders table
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(1001, 1, '2025-06-24', 20.50),
(1002, 3, '2025-06-25', 12.99);

-- Linking the orders and books together in the Order_Items table
INSERT INTO Order_Items (OrderItemID, OrderID, BookID, Quantity, PriceAtPurchase) VALUES
(201, 1001, 103, 1, 9.50),  -- Order 1001 contains '1984'
(202, 1001, 104, 1, 11.00), -- Order 1001 also contains 'Malgudi Days'
(203, 1002, 101, 1, 12.99); -- Order 1002 contains 'The Alchemist'
-- PART 3: CHANGE EXISTING DATA (THE `UPDATE` COMMAND)
-- Let's increase the price of 'The Alchemist'.
UPDATE Books
SET Price = 13.50
WHERE BookID = 101; 
-- PART 4: REMOVE DATA (THE `DELETE` COMMAND)
-- Let's say we no longer sell 'A Suitable Boy'.
DELETE FROM Books
WHERE BookID = 102; 