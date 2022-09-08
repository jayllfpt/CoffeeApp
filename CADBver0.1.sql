--
USE master
GO
if exists (select * from sysdatabases where name='CoffeeApp')
		drop database CoffeeApp
go

--create DB
create database CoffeeApp
use CoffeeApp
--create tables
CREATE TABLE Accounts (empID int IDENTITY NOT NULL, empFName varchar(50) NULL, empLName varchar(50) NULL, empPhone varchar(12) NULL, empAddress varchar(50) NULL, username varchar(50) NULL, password varchar(50) NULL, empStatus varchar(50) NULL, shopID int NOT NULL, roleID int NOT NULL, PRIMARY KEY (empID));
CREATE TABLE Bill (billID int IDENTITY NOT NULL, DateTime int NULL, tipsAmount varchar(50) NULL, Note varchar(50) NULL, subTotal float(10) NULL, total float(10) NULL, empID int NULL, shopID int NOT NULL, itemID int NULL, cusID int NOT NULL, vouID int NOT NULL, PRIMARY KEY (billID));
CREATE TABLE BillDetail (billID int NOT NULL, quantity varchar(50) NULL, shopID int NOT NULL, itemID int NOT NULL, PRIMARY KEY (billID));
CREATE TABLE Shop (shopID int IDENTITY NOT NULL, shopName varchar(10) NULL, shopAddress varchar(50) NULL, shopPhone varchar(12) NULL, shopStatus varchar(50) NULL, PRIMARY KEY (shopID));
CREATE TABLE Customer (cusID int IDENTITY NOT NULL, cusName varchar(50) NULL, cusPhone varchar(50) NULL, cusAddress varchar(50) NULL, totalSpend varchar(50) NULL, memRoleID int NOT NULL, shopID int NOT NULL, PRIMARY KEY (cusID));
CREATE TABLE CustomerDetail (memRoleID int IDENTITY NOT NULL, roleName varchar(50) NULL, roleDescription varchar(50) NULL, discountAmount varchar(50) NULL, memStatus varchar(50) NULL, PRIMARY KEY (memRoleID));
CREATE TABLE Items (itemID int IDENTITY NOT NULL, itemName varchar(50) NULL, itemDescription varchar(50) NULL, itemPrice float(10) NULL, imgPath varchar(50) NULL, itemStatus varchar(50) NULL, itemQuantity varchar(50) NULL, typeID int NOT NULL, shopID int NOT NULL, PRIMARY KEY (itemID));
CREATE TABLE Role (roleID int IDENTITY NOT NULL, roleName varchar(50) NULL, roleDescription varchar(50) NULL, PRIMARY KEY (roleID));
CREATE TABLE Type (typeID int IDENTITY NOT NULL, typeName varchar(50) NULL, PRIMARY KEY (typeID));
CREATE TABLE Voucher (vouID int IDENTITY NOT NULL, vouName varchar(50) NULL, vouDescription varchar(50) NULL, vouStatus varchar(50) NULL, shopID int NOT NULL, PRIMARY KEY (vouID));
ALTER TABLE Accounts ADD CONSTRAINT FKAccounts618598 FOREIGN KEY (shopID) REFERENCES Shop (shopID);
ALTER TABLE Accounts ADD CONSTRAINT FKAccounts185524 FOREIGN KEY (roleID) REFERENCES Role (roleID);
ALTER TABLE Voucher ADD CONSTRAINT FKVoucher238092 FOREIGN KEY (shopID) REFERENCES Shop (shopID);
ALTER TABLE Items ADD CONSTRAINT FKItems13512 FOREIGN KEY (typeID) REFERENCES Type (typeID);
ALTER TABLE Items ADD CONSTRAINT FKItems859154 FOREIGN KEY (shopID) REFERENCES Shop (shopID);
ALTER TABLE Bill ADD CONSTRAINT FKBill956308 FOREIGN KEY (shopID) REFERENCES Shop (shopID);
ALTER TABLE BillDetail ADD CONSTRAINT FKBillDetail429556 FOREIGN KEY (billID) REFERENCES Bill (billID);
ALTER TABLE Bill ADD CONSTRAINT FKBill258944 FOREIGN KEY (vouID) REFERENCES Voucher (vouID);
ALTER TABLE BillDetail ADD CONSTRAINT FKBillDetail815865 FOREIGN KEY (itemID) REFERENCES Items (itemID);
ALTER TABLE BillDetail ADD CONSTRAINT FKBillDetail548706 FOREIGN KEY (shopID) REFERENCES Shop (shopID);
ALTER TABLE Customer ADD CONSTRAINT FKCustomer342294 FOREIGN KEY (memRoleID) REFERENCES CustomerDetail (memRoleID);
ALTER TABLE Customer ADD CONSTRAINT FKCustomer265854 FOREIGN KEY (shopID) REFERENCES Shop (shopID);
ALTER TABLE Bill ADD CONSTRAINT FKBill944699 FOREIGN KEY (cusID) REFERENCES Customer (cusID);

--add samples data
SET IDENTITY_INSERT Shop ON
INSERT INTO Shop(shopID, shopName, shopAddress, shopPhone, shopStatus) VALUES (1, 'CFSHOP1', 'HCMC', '0101010101', 'working')
SET IDENTITY_INSERT Shop OFF

SET IDENTITY_INSERT Role ON
INSERT INTO Role(roleID, roleName, roleDescription) VALUES (1, 'Manager', 'Manager of coffee shop');
INSERT INTO Role(roleID, roleName, roleDescription) VALUES (2, 'Baristar', 'Baristar of coffee shop');
INSERT INTO Role(roleID, roleName, roleDescription) VALUES (3, 'Waiter', 'Waiter of coffee shop');
INSERT INTO Role(roleID, roleName, roleDescription) VALUES (4, 'Designer', 'Social designer of coffee shop');
SET IDENTITY_INSERT Role OFF

SET IDENTITY_INSERT Type ON
INSERT INTO Type(typeID, typeName) VALUES (1, 'Tra');
INSERT INTO Type(typeID, typeName) VALUES (2, 'Tra Sua');
INSERT INTO Type(typeID, typeName) VALUES (3, 'Coffee');
INSERT INTO Type(typeID, typeName) VALUES (4, 'Soda');
INSERT INTO Type(typeID, typeName) VALUES (5, 'Da xay');
SET IDENTITY_INSERT Type OFF

SET IDENTITY_INSERT Voucher ON
INSERT INTO Voucher(vouID, vouName, vouDescription, vouStatus, shopID) VALUES (1, 'welcome', '30%', 'working', 1);
SET IDENTITY_INSERT Voucher OFF

SET IDENTITY_INSERT Items ON
INSERT INTO Items(itemID, itemName, itemDescription, itemPrice, imgPath, itemStatus, itemQuantity, typeID, shopID) VALUES (1, 'Ca phe', 'nong/lanh', 10, 'caphe.img', 'available', 1, 3, 1);
INSERT INTO Items(itemID, itemName, itemDescription, itemPrice, imgPath, itemStatus, itemQuantity, typeID, shopID) VALUES (2, 'Ca phe sua', 'nong/lanh', 10, 'caphefsua.img', 'available', 1, 3, 1);
INSERT INTO Items(itemID, itemName, itemDescription, itemPrice, imgPath, itemStatus, itemQuantity, typeID, shopID) VALUES (3, 'Tra sua truyen thong', 'ngon', 10, 'trasuatraditional.img', 'available', 1, 2, 1);
INSERT INTO Items(itemID, itemName, itemDescription, itemPrice, imgPath, itemStatus, itemQuantity, typeID, shopID) VALUES (4, 'Soda Chanh Day', 'ngon', 10, 'sodachanhday.img', 'available', 1, 4, 1);
SET IDENTITY_INSERT Items OFF

SET IDENTITY_INSERT Accounts ON
INSERT INTO Accounts(empID, empFName, empLName, empPhone, empAddress, username, password, empStatus, shopID, roleID) VALUES (1, 'Ngo', 'Quang', '01111111111', 'HCMC', 'quang', '1', 'working', 1, 1);
INSERT INTO Accounts(empID, empFName, empLName, empPhone, empAddress, username, password, empStatus, shopID, roleID) VALUES (2, 'Tran', 'Vinh', '02222222222', 'HCMC', 'vinh', '1', 'working', 1, 2);
INSERT INTO Accounts(empID, empFName, empLName, empPhone, empAddress, username, password, empStatus, shopID, roleID) VALUES (3, 'Pham', 'Trai', '03333333333', 'HCMC', 'trai', '1', 'working', 1, 3);
INSERT INTO Accounts(empID, empFName, empLName, empPhone, empAddress, username, password, empStatus, shopID, roleID) VALUES (4, 'Trinh', 'Linh', '04444444444', 'HCMC', 'linh', '1', 'working', 1, 4);
SET IDENTITY_INSERT Accounts OFF

SET IDENTITY_INSERT CustomerDetail ON
INSERT INTO CustomerDetail(memRoleID, roleName, roleDescription, discountAmount, memStatus) VALUES (1, 'Silver', 'Spend in total > 200k', '5%', 'is active');
INSERT INTO CustomerDetail(memRoleID, roleName, roleDescription, discountAmount, memStatus) VALUES (2, 'Gold', 'Spend in total > 500k', '10%', 'is active');
INSERT INTO CustomerDetail(memRoleID, roleName, roleDescription, discountAmount, memStatus) VALUES (3, 'Diamond', 'Spend in total > 2000k', '20%', 'is active');
SET IDENTITY_INSERT CustomerDetail OFF

/*
INSERT INTO Bill(billID, DateTime, tipsAmount, Note, subTotal, total, empID, shopID, itemID, cusID, vouID) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);
INSERT INTO BillDetail(billID, quantity, shopID, itemID) VALUES (?, ?, ?, ?);
INSERT INTO Customer(cusID, cusName, cusPhone, cusAddress, totalSpend, memRoleID, shopID) VALUES (?, ?, ?, ?, ?, ?, ?);
*/
