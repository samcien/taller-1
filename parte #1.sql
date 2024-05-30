CREATE DATABASE base_1;
USE base_1;


CREATE TABLE Category (
    idCategory INT PRIMARY KEY,
    categoryName VARCHAR(255)
);


CREATE TABLE Orders (
    id INT PRIMARY KEY,
    fecha DATE
);


CREATE TABLE Product (
    idProduct INT PRIMARY KEY,
    nameProduct VARCHAR(255),
    priceProduct FLOAT,
    idCategory INT,
    FOREIGN KEY (idCategory) REFERENCES Category(idCategory)
);


CREATE TABLE OrderLine (
    idOrderLine INT PRIMARY KEY,
    idOrder INT,
    idProduct INT,
    quantity INT,
    FOREIGN KEY (idOrder) REFERENCES Orders(id),
    FOREIGN KEY (idProduct) REFERENCES Product(idProduct)
);


CREATE TABLE Food (
    idProduct INT PRIMARY KEY,
    expirationDate DATE,
    calories INT,
    FOREIGN KEY (idProduct) REFERENCES Product(idProduct)
);


CREATE TABLE Furniture (
    idProduct INT PRIMARY KEY,
    manufactureDate DATE,
    FOREIGN KEY (idProduct) REFERENCES Product(idProduct)
);
INSERT INTO Category (idCategory, categoryName) VALUES
(1, 'Electrónicos'),
(2, 'Ropa'),
(3, 'Alimentos'),
(4, 'Muebles');

INSERT INTO Orders (id, fecha) VALUES
(1, '2024-05-01'),
(2, '2024-05-15'),
(3, '2024-05-20');

INSERT INTO Product (idProduct, nameProduct, priceProduct, idCategory) VALUES
(1, 'Televisor', 799.99, 1),
(2, 'Camiseta', 29.99, 2),
(3, 'Manzanas', 0.79, 3),
(4, 'Silla', 49.99, 4);

