CREATE TABLE buildings(name VACHAR(80) NOT NULL, shortname VACHAR(10) UNIQUE, id INTEGER PRIMARY KEY);
CREATE TABLE rooms(number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY(buildingid) REFERENCES building(id));
