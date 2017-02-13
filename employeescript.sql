create table Employee(
 ID  int Identity,
 Firstname varchar(100),
 Lastname varchar(100),
 Salary int,
 streetaddress varchar(100),
 zipcode int,
 DepartmentID int
 Foreign Key(DepartmentID) references Department(DepartmentID));

 create table Department(
  DepartmentID int Not Null,
  Departmentname varchar(100) Not null,
 )

 Alter table Department add Primary key(DepartmentID);

 insert into Department(DepartmentID,Departmentname) values (1001, 'tools');
 insert into Department(DepartmentID,Departmentname) values (1002, 'medicine');
 insert into Department(DepartmentID,Departmentname) values (1003, 'Home');
 insert into Department(DepartmentID,Departmentname) values (1004, 'Construction');
 insert into Department(DepartmentID,Departmentname) values (1005, 'Food');
 insert into Department(DepartmentID,Departmentname) values (1006, 'Utils');

insert into Employee values ('jim','wcam',60000,'401 trolly rd',23441,1003);
insert into Employee values ('asam','scam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('qsam','wcam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','rcam',100000,'404 trolly rd',23421,1006);
insert into Employee values ('sam','ecam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sam','ecam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sam','gcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','fcam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sam','fcam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','tcam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sam','ycam',100000,'404 trolly rd',23421,1006);
insert into Employee values ('sam','rcam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sam','hcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','jcam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sam','ycam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','icam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','ocam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sam','cpam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','fgcam',100000,'404 trolly rd',23421,1006);
insert into Employee values ('sam','fghcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','gbcam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sam','acam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','gvcam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sam','yrcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','nhcam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','jicam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sam','jhcam',100000,'404 trolly rd',23421,1006);
insert into Employee values ('sam','kucam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sam','ytcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','hcam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sam','ytecam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sam','htrecam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sam','hcam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sam','fcam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sam','rtyrcam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sam','recam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sfam','ygcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('shtam','htrcam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sjgfham','jrrcam',100000,'404 trolly rd',23421,1002);
insert into Employee values ('sdfgam','trwcam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('shgfam','uhgcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('sdsam','rtecam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('sfam','iytcam',100000,'404 trolly rd',23421,1006);
insert into Employee values ('syam','grcam',100000,'404 trolly rd',23421,1003);
insert into Employee values ('suam','hfdcam',100000,'404 trolly rd',23421,1004);
insert into Employee values ('sjam','gvcam',100000,'404 trolly rd',23421,1005);
insert into Employee values ('stam','ygcam',100000,'404 trolly rd',23421,1003);







insert into Employee values ('sam','cam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','cam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','cam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','cam',100000,'404 trolly rd',23421,1001);
insert into Employee values ('sam','cam',100000,'404 trolly rd',23421,1001);

SELECT  Departmentname ,SUM(SALARY) as 'Salary'
from Employee inner join Department on 
Employee.DepartmentID = Department.DepartmentID
Group by Departmentname
Order by Salary asc;

Alter table Employee Add Date_Hired Date;

Update Employee
set Salary =  100000
where ID = 20;


Alter table Employee Add Active bit;
Update Employee 
set Active = 1;
