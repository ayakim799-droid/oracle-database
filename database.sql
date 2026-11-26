
CREATE TABLE Students (
    student_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100),
    age NUMBER
);

CREATE TABLE Courses (
    course_id NUMBER PRIMARY KEY,
    course_name VARCHAR2(100)
);

CREATE TABLE Enrollments (
    enrollment_id NUMBER PRIMARY KEY,
    student_id NUMBER,
    course_id NUMBER,
    FOREIGN KEY (student_id)
        REFERENCES Students(student_id),
    FOREIGN KEY (course_id)
        REFERENCES Courses(course_id)
);

INSERT INTO Students VALUES (1, 'Ayazhan', 20);
INSERT INTO Courses VALUES (1, 'Programming');
INSERT INTO Enrollments VALUES (1, 1, 1);

COMMIT;

SELECT * FROM Students;
