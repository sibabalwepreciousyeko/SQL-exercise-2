-- ============================================
--   Create Students, Courses, Enrollments Tables
--   Tertiary Institution Database
-- ============================================

-- 1. Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    major VARCHAR(100),
    year_of_study INT
);

-- 2. Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    department VARCHAR(100),
    credits INT
);

-- 3. Create Enrollments Table
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    
    -- Foreign Key Constraints
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- ============================================
--   Insert Initial Data
-- ============================================

-- Insert Students
INSERT INTO Students (student_id, name, major, year_of_study) VALUES
(1, 'Nathi Gunguluza', 'Computer Science', 2),
(2, 'Sibabalwe Yeko', 'Business Management', 3),
(3, 'Simmy Dyasi', 'Engineering', 1);

-- Insert Courses
INSERT INTO Courses (course_id, course_name, department, credits) VALUES
(101, 'Database Systems', 'Computer Science', 4),
(102, 'Business Ethics', 'Business Studies', 3),
(103, 'Engineering Mathematics', 'Engineering', 4);

-- Insert Enrollments
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date) VALUES
(1001, 1, 101, '2025-02-10'),
(1002, 2, 102, '2025-02-12'),
(1003, 3, 103, '2025-02-14'),
(1004, 1, 103, '2025-02-16'); 
