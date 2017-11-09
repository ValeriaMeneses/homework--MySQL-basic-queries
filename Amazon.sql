#1. Create a database called **Amazon**.
#CREATE DATABASE Amazon;

#2. Create a `Products` table with `Barcode(8)`, `Description`, `Price` fields.
#USE Amazon;
#CREATE TABLE Products (
#Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
#Barcode INT(8) NOT NULL,
#Description VARCHAR(20),
#Price DEC(5,2) NOT NULL);

#3. Create a `Stock` table, with `Id_Product`, `Quantity` fields.
#CREATE TABLE Stock (
#Id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
#Id_Product INT,
#FOREIGN KEY (Id_Product) REFERENCES Products(Id),
#Quantity INT NOT NULL);

#4. Add `Cookies` with barcode `07427452`, and with a cost of `$8.50`. We have `42` in stock.
#INSERT INTO Products (Barcode, Description, Price)
#VALUES (07427452, "Cookies", 8.50);
#INSERT INTO Stock (Id_Product, Quantity)
#VALUES (1, 42);

#5. Add `Orange Juice` with barcode `12365438`, and with a cost of `$12.44`. We have `15` in stock.
#INSERT INTO Products (Barcode, Description, Price)
#VALUES (12365438, "Orange Juice", 12.44);
#INSERT INTO Stock (Id_Product, Quantity)
#VALUES (2, 15);

#6. Add `Ice Cream` with barcode `98740932`, and with a cost of `$55.98`. We have `8` in stock.
#INSERT INTO Products (Barcode, Description, Price)
#VALUES (98740932, "Ice Cream", 55.98);
#INSERT INTO Stock (Id_Product, Quantity)
#VALUES (3, 8);

#7. Add `Halls` with barcode `00870021`, and with a cost of `$5.21`. We have `10` in stock.
#INSERT INTO Products (Barcode, Description, Price)
#VALUES (00870021, "Halls", 5.21);
#INSERT INTO Stock (Id_Product, Quantity)
#VALUES (4, 10);

#8. Add `Coke` with barcode `53791253, and with a cost of `$12.34`. We have `9` in stock.
#INSERT INTO Products (Barcode, Description, Price)
#VALUES (53791253, "Coke", 12.34);
#INSERT INTO Stock (Id_Product, Quantity)
#VALUES (5, 9);

#9. Show me the products with more than `10` units in stock.
#SELECT Id_Product FROM Stock WHERE Quantity > 10;
#SELECT * FROM Products WHERE Id in (1,2);

#10. Add `15` units more to `Ice Cream`. 
#SELECT * FROM Products WHERE Description = "Ice Cream";
#UPDATE Stock
#SET Quantity = (Quantity + 15)
#WHERE Id_product = 3;

#11. Show me the products with less than `10` units in stock.
#SELECT Id_Product FROM Stock WHERE Quantity < 10;
#SELECT * FROM Products WHERE Id = 5;

#12. Delete `Orange Juice` from our store.
#DELETE FROM Stock WHERE Id_Product = 2;
#DELETE FROM Products WHERE Id = 2;

#13. Show me the products ordered by `Description`.
#SELECT * FROM Products ORDER BY Description;

#14. Show me the products ordered by `price, from `highest`.
#SELECT * FROM Products ORDER BY Price DESC;

#15. What are the products between `$5.00` and `$10.00`.
#SELECT * FROM Products WHERE Price BETWEEN 5 AND 10;

#16. What are the products between `$5.00` and `$10.00`, ordered by `highest`.
#SELECT * FROM Products WHERE Price BETWEEN 5 AND 10 ORDER BY Price DESC;

#17. How much products do we have?
#SELECT COUNT(*) FROM Products;

#18. How much stock do we have?
#SELECT SUM(Quantity) FROM Stock;
