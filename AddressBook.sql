create database AddressBookDB

create table PersonContact(
Id int identity(1,1) NOT NULL PRIMARY KEY,
FirstName varchar(16) ,
LastName varchar(16),
Address varchar(24),
City varchar(16),
State varchar(16),
ZipCode varchar(16),
PhoneNumber varchar(8),
EmailId varchar(8)
);