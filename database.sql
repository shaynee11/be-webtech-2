-- Create the web-tech-2 database
CREATE DATABASE IF NOT EXISTS `web-tech-2`;

-- Use the database
USE `web-tech-2`;

-- Create the students table with required fields
CREATE TABLE IF NOT EXISTS `students` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `age` INT NOT NULL,
  `course` VARCHAR(255) NOT NULL,
  `year_level` INT NOT NULL,
  `gpa` DECIMAL(3, 2) NOT NULL,
  `enrollment_status` ENUM('Active', 'Inactive') NOT NULL DEFAULT 'Active',
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Insert sample data (optional)
INSERT INTO `students` (first_name, last_name, email, age, course, year_level, gpa, enrollment_status) VALUES
('John', 'Doe', 'john.doe@example.com', 20, 'Computer Science', 2, 3.5, 'Active'),
('Jane', 'Smith', 'jane.smith@example.com', 21, 'Information Technology', 3, 3.8, 'Active'),
('Michael', 'Johnson', 'michael.johnson@example.com', 19, 'Computer Science', 1, 3.2, 'Active'),
('Emily', 'Williams', 'emily.williams@example.com', 22, 'Software Engineering', 4, 3.9, 'Active'),
('David', 'Brown', 'david.brown@example.com', 20, 'Information Technology', 2, 3.4, 'Active'),
('Sarah', 'Jones', 'sarah.jones@example.com', 21, 'Computer Science', 3, 3.7, 'Active'),
('Robert', 'Miller', 'robert.miller@example.com', 23, 'Software Engineering', 4, 3.6, 'Inactive'),
('Lisa', 'Davis', 'lisa.davis@example.com', 19, 'Computer Science', 1, 3.3, 'Active'),
('James', 'Wilson', 'james.wilson@example.com', 20, 'Information Technology', 2, 3.5, 'Active'),
('Anna', 'Moore', 'anna.moore@example.com', 22, 'Software Engineering', 3, 3.8, 'Active');
