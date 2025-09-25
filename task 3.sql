--
-- File generated with SQLiteStudio v3.4.17 on Thu Sep 25 18:57:17 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: customer
CREATE TABLE customer (
    customerID INTEGER PRIMARY KEY,
    name       TEXT    NOT NULL,
    Email      TEXT    UNIQUE
                       NOT NULL,
    Phone      INTEGER,
    Address    TEXT
)
WITHOUT ROWID;

INSERT INTO customer (
                         customerID,
                         name,
                         Email,
                         Phone,
                         Address
                     )
                     VALUES (
                         1,
                         'Anita Mehta',
                         'anita@example.com',
                         9123456789,
                         'Hyderabad'
                     );

INSERT INTO customer (
                         customerID,
                         name,
                         Email,
                         Phone,
                         Address
                     )
                     VALUES (
                         2,
                         'Ravi Sharma',
                         'ravi@example.com',
                         3456782911,
                         'delhi'
                     );

INSERT INTO customer (
                         customerID,
                         name,
                         Email,
                         Phone,
                         Address
                     )
                     VALUES (
                         3,
                         'Suresh Kumar',
                         'suresh@example.com',
                         4575435677,
                         'Bangalore'
                     );

INSERT INTO customer (
                         customerID,
                         name,
                         Email,
                         Phone,
                         Address
                     )
                     VALUES (
                         4,
                         'Akriti Singh',
                         'akriti@example.com',
                         7654323456,
                         'punjab'
                     );


-- Table: OrderDetails
CREATE TABLE OrderDetails (
    OrderDetailID INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID       INTEGER NOT NULL,
    ProductID     INTEGER NOT NULL,
    Quantity      INTEGER NOT NULL,
    FOREIGN KEY (
        OrderID
    )
    REFERENCES Orders (OrderID),
    FOREIGN KEY (
        ProductID
    )
    REFERENCES Product (ProductID) 
);

INSERT INTO OrderDetails (
                             OrderDetailID,
                             OrderID,
                             ProductID,
                             Quantity
                         )
                         VALUES (
                             1,
                             1,
                             2,
                             2
                         );

INSERT INTO OrderDetails (
                             OrderDetailID,
                             OrderID,
                             ProductID,
                             Quantity
                         )
                         VALUES (
                             2,
                             1,
                             1,
                             1
                         );


-- Table: Orders
CREATE TABLE Orders (
    OrderID    INTEGER PRIMARY KEY AUTOINCREMENT,
    CustomerID INTEGER NOT NULL,
    OrderDate  DATE    NOT NULL,
    FOREIGN KEY (
        CustomerID
    )
    REFERENCES customer (customerID) 
);

INSERT INTO Orders (
                       OrderID,
                       CustomerID,
                       OrderDate
                   )
                   VALUES (
                       1,
                       2,
                       '2025-09-21'
                   );

INSERT INTO Orders (
                       OrderID,
                       CustomerID,
                       OrderDate
                   )
                   VALUES (
                       2,
                       1,
                       '2025-09-20'
                   );


-- Table: Payment
CREATE TABLE Payment (
    PaymentID     INTEGER PRIMARY KEY AUTOINCREMENT,
    OrderID       INTEGER UNIQUE
                          NOT NULL,
    Amount        REAL    NOT NULL,
    PaymentDate   DATE    NOT NULL,
    PaymentMethod TEXT,
    FOREIGN KEY (
        OrderID
    )
    REFERENCES Orders (OrderID) 
);

INSERT INTO Payment (
                        PaymentID,
                        OrderID,
                        Amount,
                        PaymentDate,
                        PaymentMethod
                    )
                    VALUES (
                        1,
                        1,
                        55000.0,
                        '2025-09-20',
                        'Credit Card'
                    );


-- Table: Product
CREATE TABLE Product (
    ProductID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name      TEXT    NOT NULL,
    Price     REAL    NOT NULL,
    Stock     INTEGER DEFAULT 0
);

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        1,
                        'Tablet',
                        30000.0,
-                       1
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        2,
                        'Laptop ',
                        55000.0,
                        10
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        3,
                        'oppo',
                        50000.0,
                        50
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        4,
                        'earphone',
                        1500.0,
                        60
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        5,
                        'charger',
                        500.0,
                        10
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        6,
                        'iphone',
                        250000.0,
                        5
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        7,
                        'realme',
                        60000.0,
                        4
                    );

INSERT INTO Product (
                        ProductID,
                        Name,
                        Price,
                        Stock
                    )
                    VALUES (
                        8,
                        'moto',
                        15000.0,
                        15
                    );


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
