--------------UC1---------------
create database AddressBook_service;

use AddressBook_service;

--------------UC2---------------
create table AddressBook (
    id int  NOT NULL IDENTITY(1,1),
	fname varchar(30) NOT NULL,
	lname varchar(30) NOT NULL,
	email varchar(255) NOT NULL,
	phoneNo varchar(50) NOT NULL,
	address varchar(200) NOT NULL,
	city varchar(100) NOT NULL,
	state varchar(100) NOT NULL,
	zip varchar(30) NOT NULL	
);

select * from AddressBook;
--------------UC3---------------
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Ramesh','Singh','ramesh@gmail.com','7275414141','Aliganj','Lucknow','Uttar Pradesh','226024');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Amit','Yadav','amit@gmail.com','7541414412','Lanka','Varansi','Uttar Pradesh','566022');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Laxman','Gautam','laxman@gmail.com','9975414501','Nizamabad','Azamgarh','Bihar','276206');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Vandana','Bharti','vb@gmail.com','9989457412','Ram Nagar','Indore','Madhya pradesh','620245');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Mansi','Pandey','mansi@gmail.com','9878754875','Saki Naka','Mumbai','Maharastra','400072');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Aman','Jayas','aman@gmail.com','9956456542','Pawai','Mumbai','Maharastra','400073');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Tarun','Thakur','tarun@gmail.com','9978754872','16th main Gomti Nagar','Jaipur','Rajasthan','700072');
insert into AddressBook(fname,lname,email,phoneNo,address,city,state,zip)values('Adarsh','Verma','adarsh@gmail.com','9808754871','Agra fort','Agra','Uttar Pradesh','800542');

--------------UC4---------------
UPDATE AddressBook set lname = 'Mistra', zip = '400073' where fname = 'Mansi';

--------------UC5---------------
Delete from AddressBook where fname='Vandana';

--------------UC6---------------
Select * from AddressBook where city='Lucknow' or state='Uttar Pradesh';
Select * from AddressBook where city='Mumbai';
Select * from AddressBook where state='Bihar';

--------------UC7---------------
Select COUNT(*) from AddressBook;
Select COUNT(*) from AddressBook where city='lucknow';
Select COUNT(*) from AddressBook where state='Maharastra';
Select Count(*),state,city from AddressBook Group by state,City;

--------------UC8---------------

SELECT * from AddressBook where city='Mumbai' ORDER BY fname;