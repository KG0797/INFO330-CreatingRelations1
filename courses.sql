CREATE TABLE courses(CODE VACHAR(40) PRIMARY KEY NOT NULL CHECK(LENGTH(CODE) >= 7), start DATE NOT NULL, end DATE NOT NULL CHECK(end > start), description VACHAR(400));
INSERT INTO courses( CODE, start, end, description)
VALUES ('INFO330A', '2023-04-01', '2023-06-01', 'Data and databases'), 
        ('INFO3140', '2023-04-01', '2023-06-01', 'Networking and distributed SYstems'),
        ('INFO448A', '2023-09-25', '2023-12-19', 'Introduction to iOS'), 
        ('INFO449A', '2023-09-25', '2023-12-19', 'Introduction to Android'), 
        ('BAW0100', '2023-04-01', '2023-06-01', 'Introduction to Baset-Weaving'), 
        ('BAW100A', '2023-04-01', '2023-06-01', 'Underwater Basket-Weaving');
  
