-- Create the universitymanagement database and switch to it
CREATE DATABASE universitymanagement;
USE universitymanagement;

-- Create the login table (adding primary key for username for uniqueness)
CREATE TABLE login (
    username VARCHAR(30) PRIMARY KEY,
    password VARCHAR(30)
);

-- Insert data into the login table (this is an example, ensure values are valid)
INSERT INTO login VALUES ('Milanraj', '897077');

-- Create the teacher table (you may want to add a primary key like empID)
CREATE TABLE teacher (
    name VARCHAR(40),
    fname VARCHAR(40),
    empID VARCHAR(40) PRIMARY KEY,  -- Assuming empID is unique
    dob VARCHAR(40),
    address VARCHAR(40),
    phone VARCHAR(40),
    email VARCHAR(100),  -- Larger size for emails
    class_X VARCHAR(40),
    class_XII VARCHAR(40),
    aadhar VARCHAR(40),
    education VARCHAR(40),
    department VARCHAR(40)
);

-- Insert data into the teacher table (ensure you're providing all columns)
-- For now, this is an example insert. You should provide actual data
INSERT INTO teacher VALUES 
('John Doe', 'James Doe', 'T12345', '1990-01-01', '1234 Elm Street', '1234567890', 'john.doe@example.com', '10A', '12B', '1234-5678-1234', 'MSc', 'Physics');

-- View all data in the teacher table
SELECT * FROM teacher;

-- Create the student table (you may want to add a primary key like rollno)
CREATE TABLE student (
    name VARCHAR(40),
    fname VARCHAR(40),
    rollno VARCHAR(40) PRIMARY KEY,  -- Assuming rollno is unique
    dob VARCHAR(40),
    address VARCHAR(40),
    phone VARCHAR(40),
    email VARCHAR(100),  -- Larger size for emails
    class_X VARCHAR(40),
    class_XII VARCHAR(40),
    aadhar VARCHAR(40),
    course VARCHAR(40),
    branch VARCHAR(40)
);

-- Insert data into the student table (ensure you're providing all columns)
-- For now, this is an example insert. You should provide actual data
INSERT INTO student VALUES 
('Alice', 'David', 'S12345', '2000-05-15', '5678 Maple Avenue', '9876543210', 'alice.doe@example.com', '10B', '12A', '2233-4455-6677', 'BSc', 'CS');

-- View all data in the student table
SELECT * FROM student;

create table studentleave(rollno varchar(20),date varchar(20),Time varchar(20));
select *from studentleave;

create table teacherleave(empID varchar(20),date varchar(20),Time varchar(20));
select *from teacherleave;

create table subject(rollno varchar(20),semester varchar(20),subj1 varchar(50),subj2 varchar(50),subj3 varchar(50),subj4 varchar(50),subj5 varchar(50));
select *from subject;

create table marks(rollno varchar(20),semester varchar(20),mrk1 varchar(50),mrk2 varchar(50),mrk3 varchar(50),mrk4 varchar(50),mrk5 varchar(50));
select *from marks;

create table fee(course varchar(20), semester1 varchar(20), semester2 varchar(20), semester3 varchar(20), semester4 varchar(20), semester5 varchar(20), semester6 varchar(20), semester7 varchar(20), semester8 varchar(20));
select *from fee;

insert into fee values("BTech", "49000", "43000","43000","43000","43000","43000","43000","43000");

insert into fee values("Bsc", "44000", "35000","35000","35000","35000","35000","","");

insert into fee values("BCA", "39000", "34000","34000","34000","34000","34000","","");

insert into fee values("MTech", "70000", "60000","60000","60000","","","","");

insert into fee values("MSc", "44000", "45000","45000","45000","","","","");

insert into fee values("MCA", "66000", "42000","42000","49000","","","","");

insert into fee values("Bcom", "32000", "20000","20000","20000","20000","20000","","");

insert into fee values("Mcom", "46000", "30000","30000","30000","","","","");

create table feecollege(rollno varchar(20),course varchar(20),branch varchar(20),semester varchar(20),total varchar(20));
select *from feecollege;