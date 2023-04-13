ALTER TABLE rooms ADD COLUMN id INTEGER PRIMARY KEY;

CREATE TABLE timeslots(id INTEGER PRIMARY KEY, start_time TIMESTAMP NOT NULL, end_time TIMESTAMP NOT NULL);
CREATE TABLE schedule(coursecode, roomid INTEGER, timeslotid INTEGER UNIQUE,  
PRIMARY KEY(roomid, timeslotid), FOREIGN KEY (coursecode) REFERENCES courses(CODE),
FOREIGN KEY(roomid) REFERENCES rooms(id), FOREIGN KEY(timeslotid) REFERENCES timeslots(id));
