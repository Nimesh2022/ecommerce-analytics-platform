CREATE TABLE customers (
    CustomerID INT PRIMARY KEY,
    Country VARCHAR(100)
);

CREATE TABLE products (
    StockCode VARCHAR(20) PRIMARY KEY,
    Description VARCHAR(255)
);

CREATE TABLE invoices (
    InvoiceNo VARCHAR(20) PRIMARY KEY,
    CustomerID INT,
    InvoiceDate DATETIME,
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

CREATE TABLE invoice_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    InvoiceNo VARCHAR(20),
    StockCode VARCHAR(20),
    Quantity INT,
    UnitPrice DECIMAL(10,2),
    TotalPrice DECIMAL(10,2),
    FOREIGN KEY (InvoiceNo) REFERENCES invoices(InvoiceNo),
    FOREIGN KEY (StockCode) REFERENCES products(StockCode)
);