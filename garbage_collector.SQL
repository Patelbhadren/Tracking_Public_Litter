CREATE DATABASE garbage_collector;

USE garbage_collector;


CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE Clients (
    client_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

CREATE TABLE Pickups (
    pickup_id INT AUTO_INCREMENT PRIMARY KEY,
    client_id INT NOT NULL,
    pickup_date DATE NOT NULL,
    pickup_address VARCHAR(255) NOT NULL,
    status ENUM('scheduled', 'completed') NOT NULL DEFAULT 'scheduled',
    FOREIGN KEY (client_id) REFERENCES Clients(client_id)
);


CREATE TABLE Items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    pickup_id INT NOT NULL,
    description VARCHAR(255),
    quantity INT NOT NULL,
    category ENUM('recyclable', 'non-recyclable') NOT NULL,
    FOREIGN KEY (pickup_id) REFERENCES Pickups(pickup_id)
);


CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    pickup_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method VARCHAR(50),
    FOREIGN KEY (pickup_id) REFERENCES Pickups(pickup_id)
);
