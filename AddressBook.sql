create database AddressBookDB

use AddressBookDB

create table PersonContact(
Id int identity(1,1) NOT NULL PRIMARY KEY,
FirstName varchar(16) ,
LastName varchar(16),
Address varchar(24),
City varchar(16),
State varchar(16),
ZipCode varchar(6),
PhoneNumber varchar(16),
EmailId varchar(24)
);

Insert into PersonContact(FirstName,LastName,City,State,ZipCode,PhoneNumber,EmailId) values 
('Omkar','B','Mumbai','MH','400091','9999888877','omkarb@mail.com'),
('Ramesh','M','Sansad Marg','Delhi','110001','9988558899','rameshm@mail.com'),
('Suresh','K','Swargate','MH','411042','8877995544','sureshk@mail.com'),
('Riya','D','Chennai','Tamil Nadu','600005','7744112233','riyad@mail.com'),
('Neha','G','Kolkata','West Bangal','700073','7775553330','nehag@mail.com');

select * from PersonContact;