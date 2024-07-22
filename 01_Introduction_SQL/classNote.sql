SHOW databases
USE laxmandeora
CREATE TABLE employee (
    EID INT PRIMARY KEY Auto_Increment,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL
);
CREATE TABLE employee2 (
    EID INT ,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Salary INT NOT NULL,
    Location VARCHAR(50) NOT NULL,
    primary KEY(EID,FirstName)
);
desc employee
drop table employee

SHOW tables

DESCRIBE EMPLOYEE

insert into employee(FirstName,LastName,Age,Salary,Location) values('laxman','deora',21,204000,'jaipur')
insert into employee(FirstName,LastName,Age,Salary,Location) values('kajal','sharma',20,204002,'mp')
insert into employee(FirstName,LastName,Age,Salary,Location) values('sunder','lal',45,800000,'mumbai')
insert into employee(FirstName,LastName,Age,Salary,Location) values('divya','pinal',23,20347384,'vijya')
insert into employee(FirstName,LastName,Age,Salary,Location) values('jethalal','gada',24,232322,'kashmir')
insert into employee(FirstName,LastName,Age,Salary,Location) values('champak','gada',28,2232323,'vijywada');
insert into employee(FirstName,LastName,Age,Salary,Location) values('daya','gada',26,254545,'indore');
insert into employee(FirstName,LastName,Age,Salary,Location) values('vijya','sunder',22,2042323,'up');
insert into employee(FirstName,LastName,Age,Salary,Location) values('laxman','deora',21,204000,'jaipur');

select * from employee


-- Give me the employee details having salary 300000

SELECT * FROM EMPLOYEE WHERE SALARY >300000

SELECT FIRSTNAME,LASTNAME FROM EMPLOYEE
WHERE SALARY >300000

-- GIVE REPORT WHO MORE THEN 25

SELECT * FROM EMPLOYEE
WHERE AGE >25


-- UPDATE THE DAYA LOCATON INDORE UPDATE TO MUMBAI

UPDATE EMPLOYEE SET LOCATION ='MUMBAI'
WHERE EID = 7

DESC EMPLOYEE
SELECT * FROM EMPLOYEE

-- DELETE LAXMAN FROM TABLE

DELETE FROM EMPLOYEE
WHERE EID =1

