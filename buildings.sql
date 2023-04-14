CREATE TABLE buildings(name VACHAR(80) NOT NULL, shortname VACHAR(10) UNIQUE, id INTEGER PRIMARY KEY);
CREATE TABLE rooms(number INTEGER, buildingid INTEGER, seating INTEGER, FOREIGN KEY(buildingid) REFERENCES building(id));
INSERT INTO buildings (name, shortname, id) VALUES('Raitt Hall', 'RAI', '1901');
INSERT INTO rooms (number, buildingid, seating) VALUES ('143', '1901', '45');
