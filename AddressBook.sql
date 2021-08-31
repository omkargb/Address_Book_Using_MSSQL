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

/* Insert query */
Insert into PersonContact(FirstName,LastName,City,State,ZipCode,PhoneNumber,EmailId) values 
('Omkar','B','Mumbai','MH','400091','9999888877','omkarb@mail.com'),
('Ramesh','M','Sansad Marg','Delhi','110001','9988558899','rameshm@mail.com'),
('Suresh','K','Swargate','MH','411042','8877995544','sureshk@mail.com'),
('Riya','D','Chennai','Tamil Nadu','600005','7744112233','riyad@mail.com'),
('Neha','G','Kolkata','West Bangal','700073','7775553330','nehag@mail.com');

/* Select or retrive data query */
select * from PersonContact;

/* UPDATE query */
UPDATE PersonContact set State='Maharashtra' where FirstName='Omkar' or FirstName='Suresh'

/* ALTER, DROP query to remove data column */
ALTER table PersonContact DROP column Address;

/* Alter to add new column */
ALTER table PersonContact Add Gender varchar(2);
UPDATE PersonContact set Gender='M' where FirstName='Omkar' or FirstName='Ramesh' or FirstName='Suresh'
UPDATE PersonContact set Gender='F' where FirstName='Riya' or FirstName='Neha'

/* SELECT with WHERE condition */
SELECT FirstName,EmailId,City from PersonContact where State='Maharashtra';

/* using database function and group by */
Select COUNT(FirstName) as MalePersonCount From PersonContact Where Gender='M' Group by Gender;
Select COUNT(FirstName) as FemalePersonCount From PersonContact Where Gender='F' Group by Gender;
