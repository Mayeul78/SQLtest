CREATE DATABASE University;
USE University;
 CREATE TABLE student_account(
id int,
mail varchar(50) not null,
pass varchar(50) not null,
PRIMARY KEY(id)
);

INSERT INTO student_account(id,mail,pass) VALUES (0,'mayeul78000@gmail.com','mayeul');
INSERT INTO student_account(id,mail,pass) VALUES (1,'mathis@gmail.com','Matt');


CREATE TABLE students_info(
id int,
surname varchar(50) not null,
firstname varchar(50) not null,
PRIMARY KEY(id),
FOREIGN KEY (id) REFERENCES student_account(id)
);

INSERT INTO students_info(id,surname,firstname) VALUES (0,'boucher','mayeul');
INSERT INTO students_info(id,firstname,surname) VALUES (1,'clotheau','Mathis');

CREATE TABLE students_emergencycontact(
id int,
contact_surname varchar(50) not null,
contact_firstname varchar(50) not null,
phone varchar(50) not null,
PRIMARY KEY(id),
FOREIGN KEY (id) REFERENCES student_account(id)
);

INSERT INTO students_emergencycontact(id,contact_surname,contact_firstname,phone) VALUES (0,'boucher','paul','05785225');
INSERT INTO students_emergencycontact(id,contact_surname,contact_firstname,phone) VALUES (1,'clotheau','Veronique','852254');

CREATE TABLE students_detailed 
SELECT student_account.*, university.students_info.firstname, university.students_info.surname
FROM student_account 
INNER JOIN students_info 
ON students_info.id=student_account.id
