SELECT * FROM UNI_STUDENTS;

SELECT * FROM UNI_COURSES;

SELECT * FROM UNI_ENROLLMENTS;

SELECT s.full_name, s.age, c.course_name
FROM UNI_STUDENTS s
JOIN UNI_ENROLLMENTS e
ON s.student_id = e.student_id
JOIN UNI_COURSES c
ON e.course_id = c.course_id;
