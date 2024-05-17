CREATE DATABASE swing_store_database;
USE swing_store_database;

CREATE TABLE User(
    username VARCHAR(50), -- Reduce length to fit within index limit
    full_name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(255),
    access_level VARCHAR(255) NOT NULL,
    PRIMARY KEY(username)
);

CREATE TABLE Product (
    id INTEGER AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255),
    price DECIMAL(10,2) NOT NULL,
    PRIMARY KEY(id),
    UNIQUE(name(191)) -- Limit the length of the unique constraint to 191 characters
);

CREATE TABLE Sale (
    id INTEGER AUTO_INCREMENT,
    total_cost DECIMAL(10,2) NOT NULL, -- Use DECIMAL type for total_cost
    seller_username VARCHAR(50), -- Reduce length to fit within index limit
    date DATETIME NOT NULL,
    PRIMARY KEY(id)
);

-- DROP TABLE Users;
-- DROP TABLE Product;
-- DROP TABLE Sale;

INSERT INTO User VALUES("admin", "ADMIN", "test", "ADMINTEST@hotmail.com", "Administrator");
INSERT INTO User VALUES("acaminha", "Alexandre", "test123", "alexandrencaminha@gmail.com", "Manager");
INSERT INTO User VALUES("cacaminha", "Caio", "test123", "caioncaminha@gmail.com", "Attendant");

INSERT INTO Product VALUES(null, "Cheeseburger", "Burger", 9.99); -- Remove quotes from price values
INSERT INTO Product VALUES(null, "Coca-Cola", "Drink", 3.99); -- Remove quotes from price values

INSERT INTO Sale VALUES(null, 9.99, "Alexandre", '2022-12-16');

SELECT * FROM User; -- Change table name to Users
SELECT * FROM Product;
SELECT * FROM Sale;
