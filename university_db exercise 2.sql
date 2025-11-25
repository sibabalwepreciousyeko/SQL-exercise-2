CREATE SCHEMA `university_db` ;

CREATE TABLE `university_db`.`lectures` (
  `id_Lectures` INT NOT NULL AUTO_INCREMENT,
  `Lect_name` VARCHAR(45) NOT NULL,
  `Lect_department` VARCHAR(45) NOT NULL,
  `Lect_email` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_Lectures`));
  
UPDATE `university_db`.`lectures` SET `Lect_name` = 'JENNY_YOUNG', `Lect_email` = 'jenny.young@gmail.com' WHERE (`id_Lectures` = '7');

UPDATE `university_db`.`lectures` SET `Lect_name` = 'SIBA_SMITH', `Lect_email` = 'siba.smith@gmail.com' WHERE (`id_Lectures` = '8');

UPDATE `university_db`.`lectures` SET `Lect_name` = 'PRECIOUS_OKAY', `Lect_email` = 'precious.okay@gmail.com' WHERE (`id_Lectures` = '9');

ALTER TABLE `university_db`.`lectures` 
ADD COLUMN `office_location` VARCHAR(45) NOT NULL AFTER `Lect_email`;

UPDATE `university_db`.`lectures` SET `office_location` = 'Room_101' WHERE (`id_Lectures` = '7');
UPDATE `university_db`.`lectures` SET `office_location` = 'Room_303' WHERE (`id_Lectures` = '8');
UPDATE `university_db`.`lectures` SET `office_location` = 'Room_102' WHERE (`id_Lectures` = '9');

ALTER TABLE `university_db`.`lectures` 
CHANGE COLUMN `Lect_department` `Lect_department` VARCHAR(45) NOT NULL DEFAULT 'General' ;

CREATE TABLE Lecturers (
    lecturer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    department VARCHAR(100) DEFAULT 'General',
    office_location VARCHAR(100)
);

INSERT INTO Lecturers (name, email, office_location)
VALUES ('Dr. Eva Eleven', 'eva.eleven@university.com', 'Room 404');

SELECT * FROM Lecturers;

INSERT INTO Lecturers (name, department, email)
VALUES ('Dr. Micah Sheep', 'General', 'micah.sheep@engineering.com');

SELECT * FROM Lecturers
WHERE email = 'micah.sheep@engineering.com';


SET SQL_SAFE_UPDATES = 0;


UPDATE Lecturers
SET department = 'Engineering'
WHERE email LIKE '%@engineering.com';


UPDATE Lecturers
SET department = 'Science'
WHERE name LIKE '%Dr.%';


SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Lecturers
WHERE email LIKE '%@engineering.com'
   OR name LIKE '%Dr.%';
   
   DELETE FROM Lecturers
WHERE name = 'Siba Smith';

SELECT * FROM Lecturers;

ALTER TABLE Lecturers
ADD COLUMN phone_number VARCHAR(15);

DESCRIBE Lecturers;


UPDATE Lecturers
SET phone_number = '123-456-7890'
WHERE name = 'Precious Okay';

UPDATE Lecturers
SET phone_number = '987-654-3210'
WHERE name = 'Jenny Young';










