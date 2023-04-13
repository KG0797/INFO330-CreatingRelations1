CREATE TABLE registrations(studentid INTEGER FOREIGN KEY(studentid）REFERENCES students(id), course VARCHAR(40) FOREIGN KEY(course) REFERENCES courses(CODE), grade FLOAT DEFAULT NULL);
INSERT INTO registrations（studentid, course, grade)
VALUES ('1', 'INFO330A', NULL), ('1', 'INFO448A', NULL), ('1', 'INFO314', NULL),
('3', 'INFO330A', NULL), ('3', 'INF0449A', NULL),
('2', 'BAW0100', NULL), ('2', 'BAW100A', NULL),
('4', 'BAW0100', NULL);
