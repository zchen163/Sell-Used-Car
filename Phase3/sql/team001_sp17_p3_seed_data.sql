
-- Insert Test (seed) Data  
USE cs6400_sp17_team001;

-- Insert into User
-- example of using a 60 char length hashed password 'michael123' = $2y$08$kr5P80A7RyA0FDPUa8cB2eaf0EqbUay0nYspuajgHRRXM9SgzNgZO
-- depends on if you are storing the hash $storedHash or plaintext $storedPassword in login.php
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('admin@gtonline.com', 'admin123', 'Johnny', 'Admin');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('dschrute@dundermifflin.com', 'dwight123', 'Dwight', 'Schrute');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('gbluth@bluthco.com', 'george123', 'George', 'Bluth');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('jhalpert@dundermifflin.com', 'jim123', 'Jim', 'Halpert');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('lfunke@bluthco.com', 'lindsey123', 'Lindsey', 'Funke');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('michael@bluthco.com', 'michael123', 'Michael', 'Bluth');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('pam@dundermifflin.com', 'pam123', 'Pam', 'Halpert');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('tsmith@gatech.edu', 'tsmith123', 'Tom', 'Smith');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('jdoe@gatech.edu', 'jdoe123', 'Jane', 'Doe');
INSERT INTO `User` (email, `password`, firstname, lastname) VALUES('rocky@cc.gatech.edu', 'rocky123', 'Rocky', 'Dunlap');

-- Insert into AdminUser
INSERT INTO AdminUser (email, lastlogin) VALUES('admin@gtonline.com', NOW() );

-- Insert into RegularUser
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('dschrute@dundermifflin.com', 'Male', '1971-07-15', 'Scranton', 'Rochester');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('gbluth@bluthco.com', 'Male', '1950-11-17', 'Los Angeles', 'Los Angeles');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('jhalpert@dundermifflin.com', 'Male', '1973-10-02', 'Scranton', 'Buffalo');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('lfunke@bluthco.com', 'Female', '1974-05-05', 'Los Angeles', 'Las Vegas');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('michael@bluthco.com', 'Male', '1971-01-01', 'Phoenix', 'Beverly Hills');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('pam@dundermifflin.com', 'Female', '1975-04-28', 'Scranton', 'Sacramento');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('rocky@cc.gatech.edu', 'Male', '1981-03-22', 'Atlanta', 'Conyers');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('tsmith@gatech.edu', 'Male', '1980-01-12', 'Denver', 'Portland');
INSERT INTO RegularUser (email, gender, birthdate, currentcity, hometown) VALUES('jdoe@gatech.edu', 'Female', '1975-07-22', 'New York', 'Denver');

-- Insert into StatusUpdate
INSERT INTO StatusUpdate (email, dateandtime, statustext) VALUES('michael@bluthco.com', concat(CURDATE()-INTERVAL 3 MONTH,' 11:20:00'), 'My first status update!');
INSERT INTO StatusUpdate (email, dateandtime, statustext) VALUES('michael@bluthco.com', concat(CURDATE()-INTERVAL 2 MONTH,' 13:40:00'), 'Going to the store.');
INSERT INTO StatusUpdate (email, dateandtime, statustext) VALUES('rocky@cc.gatech.edu', concat(NOW()-INTERVAL 10 DAY), 'Going to a concert!');

-- Insert into Comment
INSERT INTO `Comment` (email, dateandtime, commenttext, suemail, sudateandtime) VALUES('dschrute@dundermifflin.com', concat(CURDATE()-INTERVAL 3 MONTH,' 09:30:00'), 'Hi Dwight!', 'michael@bluthco.com', concat(CURDATE()-INTERVAL 3 MONTH,' 11:20:00'));
INSERT INTO `Comment` (email, dateandtime, commenttext, suemail, sudateandtime) VALUES('rocky@cc.gatech.edu', concat(CURDATE()-INTERVAL 3 MONTH,' 10:30:00'), 'Hi Rocky!', 'michael@bluthco.com', concat(CURDATE()-INTERVAL 2 MONTH,' 13:40:00') );

-- Insert into UserInterest
INSERT INTO UserInterest (email, Interest) VALUES('jhalpert@dundermifflin.com', 'bird watching');
INSERT INTO UserInterest (email, Interest) VALUES('michael@bluthco.com', 'golf');
INSERT INTO UserInterest (email, Interest) VALUES('michael@bluthco.com', 'indie rock music');
INSERT INTO UserInterest (email, Interest) VALUES('michael@bluthco.com', 'swimming');
INSERT INTO UserInterest (email, Interest) VALUES('tsmith@gatech.edu', 'gaming');
INSERT INTO UserInterest (email, Interest) VALUES('tsmith@gatech.edu', 'hiking');
INSERT INTO UserInterest (email, Interest) VALUES('pam@dundermifflin.com', 'horse racing');
INSERT INTO UserInterest (email, Interest) VALUES('pam@dundermifflin.com', 'volleyball');
INSERT INTO UserInterest (email, Interest) VALUES('rocky@cc.gatech.edu', 'piano');
INSERT INTO UserInterest (email, Interest) VALUES('rocky@cc.gatech.edu', 'Per N�rg�rd');
INSERT INTO UserInterest (email, Interest) VALUES('rocky@cc.gatech.edu', 'classical music');
INSERT INTO UserInterest (email, Interest) VALUES('rocky@cc.gatech.edu', 'Copenhagen Opera House');
INSERT INTO UserInterest (email, Interest) VALUES('lfunke@bluthco.com', 'skydiving');
INSERT INTO UserInterest (email, Interest) VALUES('lfunke@bluthco.com', 'base jumping');
INSERT INTO UserInterest (email, Interest) VALUES('jdoe@gatech.edu', 'eating sm�rrebr�d');
INSERT INTO UserInterest (email, Interest) VALUES('jdoe@gatech.edu', 'football (soccer)');

-- Insert into Friendship
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('michael@bluthco.com', 'gbluth@bluthco.com', 'Father', concat(CURDATE()-INTERVAL 10 YEAR));
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('michael@bluthco.com', 'jhalpert@dundermifflin.com', 'Long Lost Cousin', NULL);
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('michael@bluthco.com', 'lfunke@bluthco.com', 'Sister', concat(CURDATE()-INTERVAL 180 DAY));
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('pam@dundermifflin.com', 'michael@bluthco.com', 'Colleague', NULL);
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('tsmith@gatech.edu', 'michael@bluthco.com', 'Boss', NULL);
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('rocky@cc.gatech.edu', 'michael@bluthco.com', 'Peer', concat(CURDATE()-INTERVAL 5 MONTH));
INSERT INTO Friendship (email, friendemail, relationship, dateconnected) VALUES('michael@bluthco.com', 'rocky@cc.gatech.edu', 'Peer', concat(CURDATE()-INTERVAL 8 YEAR));

-- Insert into Employer
INSERT INTO Employer (employername) VALUES('Bluth Development Company');
INSERT INTO Employer (employername) VALUES('Dunder Mifflin');
INSERT INTO Employer (employername) VALUES('Georgia Institute of Technology');

-- Insert into Employment
INSERT INTO Employment (email, employername, jobtitle) VALUES('dschrute@dundermifflin.com', 'Dunder Mifflin', 'Student Intern');
INSERT INTO Employment (email, employername, jobtitle) VALUES('michael@bluthco.com', 'Bluth Development Company', 'Software Developer I');
INSERT INTO Employment (email, employername, jobtitle) VALUES('rocky@cc.gatech.edu', 'Georgia Institute of Technology', 'Teaching Assistant');

-- Insert into SchoolType
INSERT INTO SchoolType (typename) VALUES('Community College');
INSERT INTO SchoolType (typename) VALUES('High School');
INSERT INTO SchoolType (typename) VALUES('University');

-- Insert into School
INSERT INTO School (schoolname, schooltype) VALUES('Phoenix High School', 'High School');
INSERT INTO School (schoolname, schooltype) VALUES('Piedmont College', 'Community College');
INSERT INTO School (schoolname, schooltype) VALUES('University of Georgia', 'University');
INSERT INTO School (schoolname, schooltype) VALUES('University of California', 'University');
INSERT INTO School (schoolname, schooltype) VALUES('University of Colorado', 'University');
INSERT INTO School (schoolname, schooltype) VALUES('Georgia Institute of Technology', 'University');

-- Insert into Attend
INSERT INTO Attend (email, schoolname, yeargraduated) VALUES('michael@bluthco.com', 'Phoenix High School', 1989);
INSERT INTO Attend (email, schoolname, yeargraduated) VALUES('michael@bluthco.com', 'University of California', 1993);
INSERT INTO Attend (email, schoolname, yeargraduated) VALUES('michael@bluthco.com', 'Georgia Institute of Technology', 2016);
INSERT INTO Attend (email, schoolname, yeargraduated) VALUES('rocky@cc.gatech.edu', 'Piedmont College', 1993);
INSERT INTO Attend (email, schoolname, yeargraduated) VALUES('rocky@cc.gatech.edu', 'University of Colorado', 1996);
INSERT INTO Attend (email, schoolname, yeargraduated) VALUES('rocky@cc.gatech.edu', 'Georgia Institute of Technology', 2016);