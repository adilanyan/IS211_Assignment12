PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: quizzes
DROP TABLE IF EXISTS quizzes;
CREATE TABLE quizzes (quizzes_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, subject VARCHAR (200), question_count INTEGER, quiz_date DATE);
INSERT INTO quizzes (quizzes_id, subject, question_count, quiz_date) VALUES (1, 'Python Basics', 5, '2015-02-05');

-- Table: student_quiz_results
DROP TABLE IF EXISTS student_quiz_results;
CREATE TABLE student_quiz_results (student_id INTEGER, quiz_id INTEGER, score INTEGER);

INSERT INTO student_quiz_results (student_id, quiz_id, score) VALUES (101, 5, 99);
INSERT INTO student_quiz_results (student_id, quiz_id, score) VALUES (221, 1, 100);

-- Table: students
DROP TABLE IF EXISTS students;
CREATE TABLE students (students_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, first_name VARCHAR (20), last_name VARCHAR (20));
INSERT INTO students (students_id, first_name, last_name) VALUES (101, 'John', 'Smith');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
