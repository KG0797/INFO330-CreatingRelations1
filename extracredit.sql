

CREATE TABLE temp_rooms(id INTEGER PRIMARY KEY NOT NULL, number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY(buildingid) REFERENCES building(id));
INSERT INTO temp_rooms (number, buildingid, seating)
SELECT number, buildingid, seating FROM rooms;
DROP TABLE rooms;
ALTER TABLE temp_rooms RENAME TO rooms;

CREATE TABLE timeslots(id INTEGER PRIMARY KEY, start_time TIMESTAMP NOT NULL, end_time TIMESTAMP NOT NULL);

CREATE TABLE schedule(coursecode, roomid INTEGER UNIQUE, timeslotid INTEGER UNIQUE,  
FOREIGN KEY (coursecode) REFERENCES courses(CODE),
FOREIGN KEY(roomid) REFERENCES rooms(id), 
FOREIGN KEY(timeslotid) REFERENCES timeslots(id));
