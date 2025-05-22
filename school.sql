-- 1. STUDENTS table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    date_of_birth DATE NOT NULL
);

-- 2. STUDENT_PROFILE (One-to-One with Students)
CREATE TABLE StudentProfile (
    profile_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT UNIQUE,
    address VARCHAR(255),
    phone_number VARCHAR(20),
    guardian_name VARCHAR(100),
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

-- 3. TEACHERS table
CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department VARCHAR(100)
);

-- 4. COURSES table (One-to-Many: One teacher teaches many courses)
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id)
);

-- 5. ENROLLMENTS table (Many-to-Many: Students <-> Courses)
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id),
    UNIQUE(student_id, course_id) -- to prevent duplicate enrollments
);

-- 6. GRADES table (one-to-one with Enrollments)
CREATE TABLE Grades (
    enrollment_id INT PRIMARY KEY,
    grade CHAR(2),
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);