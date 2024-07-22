CREATE DATABASE TechPriya;
use Techpriya
show tables

CREATE TABLE Employee(
Eid INT PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
Age INT NOT NULL, 
Salary INT NOT NULL,
Location VARCHAR(50) NOT NULL
);

describe EMPLOYEE;

-- THIS IS SHORT FORM OF DESCRIBE
DESC EMPLOYEE;

-- INSERT THE VALUE
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('LAXMAN','DEORA',21,204000,'JAIPUR');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('PURVESH','DEORA',24,250000,'MUMBAI');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('KAJAL','SHARMA',21,300000,'INDORE');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('DEVANSHI','MINDA',22,500000,'UDAIPUR');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('JIGYASHA','SONI',21,304000,'UDAIPUR');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('KHUSHI','BORONA',17,204000,'PINDWARA');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('VIPUL','GUPTA',24,1200000,'MUMBAI');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('BHAWER','SINGH',23,400000,'UDAIPUR');
INSERT INTO EMPLOYEE(FIRSTNAME,LASTNAME,AGE,SALARY,LOCATION) VALUES ('TEJPAL','DEORA',27,1000000,'MUMBAI');

SELECT * FROM EMPLOYEE;
-- CREATE A TABLE BY NAME OF COURSES HAVING FIELD NAME "COURSEID", "COURSENAME","COURSE_DURATION_MONTHS","COURSEFEE"

USE TECHPRIYA
CREATE TABLE COURSE(
COURSEID INT PRIMARY KEY AUTO_INCREMENT ,
COURSENAME VARCHAR(50) NOT NULL,
COURSE_DURATION_MONTHS INT  NOT NULL,
COURSEFEE INT NOT NULL
);

SHOW TABLES
DESC COURSE

-- INSERT THE COURSE DETAILS INSIDE THE TABLE COURSE
-- 1. 'COMPLETE EXCEL MASTERY COURSE', 3, 1499
-- 2. 'DSA FOR INTERVIEW PREPATION',2,4999
-- 3. 'SQL BOOTCAMP' , 1,2999

INSERT INTO COURSE(COURSENAME,COURSE_DURATION_MONTHS,COURSEFEE) VALUES ('COMPLETE EXCEL MASTERY COURSE',3,1499);
INSERT INTO COURSE(COURSENAME,COURSE_DURATION_MONTHS,COURSEFEE) VALUES ('DSA FOR INTERVIEW PREPATION',2,4999);
INSERT INTO COURSE(COURSENAME,COURSE_DURATION_MONTHS,COURSEFEE) VALUES ('SQL BOOTCAMP',1,2999);

SELECT* FROM COURSE

-- CREATE A TABLE LEARNER HAVING FIELD NAME
-- "LearnerId","Learner_firstName","Learner_lastName","Learner_emailId","Learner_phoneNumber","Learner_enviromentDate","Selected_Course","YearofExprience","Learner_Company","SourceOfJoining",Batch_Date,Location



CREATE TABLE Learners(
Learner_id INT AUTO_INCREMENT ,
Learner_firstName VARCHAR(50) NOT NULL,
Learner_lastName VARCHAR(50) NOT NULL,
Learner_emailId VARCHAR(50) ,
Learner_phoneNumber VARCHAR(15) NOT NULL,
Learner_enviromentDate TIMESTAMP NOT NULL,
Selected_Course INT NOT NULL,
YearOfExperience INT NOT NULL,
Learner_Company VARCHAR(50) ,
SourceOfJoining VARCHAR(50),
Batch_Date TIMESTAMP,
Location VARCHAR(50) NOT NULL,
PRIMARY KEY (Learner_id),
UNIQUE KEY(Learner_emailId),
FOREIGN key(Selected_course) REFERENCES COURSE (COURSEID)
);

DESC Learners;

-- insert learner  details in the learner table
-- Batch Start date '1' - "2024-02-29"
-- Batch Start date '2' - "2024-01-16"
-- Batch Start date '3' - "2024-03-25"

INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location) VALUES ("Laxman","Deora","laxmandeora887@gmail.com","6377598955","2024-02-28",1,1,"Averniya Solution PVT LTD", "Linkedlin","2024-02-29","jaipur")
INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location) VALUES ("Akash", "Mishra", '9998887776', "akash@gmail.com", '2024-01-21', 1, 4, "Amazon", "LinkedIn", '2024-02-29', "Bengaluru");
INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location)VALUES("Rishikesh","Joshi","carjkop@gmail.com", "9950192388",  '2024-03-19', 3, 2, "HCL", "Youtube", '2024-03-25', "Chennai");
INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location)VALUES("Jeevan","Hegde","jeevanhegdek@yahoo.co.in",  "9657856732",'2024-01-15', 2, 0, "", "Linkedin", '2024-01-16', "Noida");
INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location) VALUES("Akhil","George","akhil.george.8743@gmail.com","7689558930",  '2024-03-13', 3, 4, "Accenture", "Community", '2024-03-25', "Bengaluru");
INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location)VALUES("Sidhish","Kumar", "sidhishkumar@gmail.com","6475765443",'2024-01-10', 1, 4, "Meta", "Youtube", '2024-03-29', "Bengaluru");
INSERT INTO Learners(Learner_firstName,Learner_lastName,Learner_emailId,Learner_phoneNumber,Learner_enviromentDate,Selected_Course,YearofExperience,Learner_Company,SourceOfJoining,Batch_Date,Location) VALUES("NagaSai","Sreedhar","saisreedhar2001@gmail.com", "9182937061", '2024-03-17', 3, 4, "TCS", "Community", '2024-03-25', "Mumbai");

select* from learners

-- Data Analysis [employee,course,learners ]
-- Give me the record of employe getting highest salary 

	SELECT * FROM employee
    ORDER BY SALARY DESC
    LIMIT 1;
    -- NOTE IN THIS WE USE DESC FOR ARRANGE DESENDING ORDER ITS BY DEFAULT ACCENDING ORDER SO
    
-- Give me the record of employe getting MINIMUM salary 
SELECT * FROM employee
    ORDER BY SALARY
    LIMIT 1;
    
-- WHERE CONDITION max salary

SELECT * FROM employee
WHERE salary = (SELECT MAX(Salary)
FROM employee
)
-- WHERE CONDITION min salary

SELECT * FROM employee
where salary = (SELECT MIN(salary)
from employee
)

SELECT MAX(SALARY) as Max_Salary FROM EMPLOYEE;
SELECT Min(SALARY) as Min_Salary FROM EMPLOYEE;

-- GIVE	me the record of the employee gating highest salary and age bigger then age 25

SELECT * FROM employee
WHERE Age > 25
ORDER BY Salary DESC
LIMIT 3

-- 3. display the number of enviroment in website of techpriya

SELECT COUNT(*) AS num_of_enviroment
FROM Learners

-- 4.display the number of enviroment for courseId 3 [Sql Bootcamp]

select COUNT(*) AS Sql_Corse_Enviroment
from Learners
WHERE Selected_Course = 3;

-- 5. coount the number of learner envirolled in the month in jan

SELECT COUNT(*) AS jan_Month_Enviroment
from Learners
WHERE Learner_enviromentDate LIKE  '%-01-%'
	
    select * from learners
    
-- Update jeevan data with your of exprience as 1 and learner company as 'amazon'

UPDATE Learners SET YearofExperience=1, Learner_Company="Amazon"
WHERE Learner_id = 5

-- 7. COUNT THE NUMBER OF COMPANIES LEARNER BELONG TO

SELECT count(DISTINCT Learner_Company) as Company_learner
from learners