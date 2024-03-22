ALTER TABLE singer RENAME TO musician;
CREATE TABLE band (bandName varchar(50), creation YEAR, genre varchar(50), PRIMARY KEY (bandName));

INSERT INTO band(bandName, creation, genre) VALUES ('Crazy Duo', 2015, 'rock');
INSERT INTO band(bandName, creation, genre) VALUES ('Luna', 2009, 'classical');
INSERT INTO band(bandName, creation, genre) VALUES ('Mysterio', 2019, 'pop');

ALTER TABLE musician ADD role varchar(50);
ALTER TABLE musician ADD bandName varchar(50);
ALTER TABLE musician ADD CONSTRAINT FK_bandName FOREIGN KEY (bandName) REFERENCES band(bandName);
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;

UPDATE musician m SET m.role = 'vocals', m.bandName = 'Crazy Duo' WHERE m.musicianName = 'Alina';
UPDATE musician m SET m.role = 'guitar', m.bandName = 'Mysterio' WHERE m.musicianName = 'Mysterio';
UPDATE musician m SET m.role = 'percussion', m.bandName = 'Crazy Duo' WHERE m.musicianName = 'Rainbow';
UPDATE musician m SET m.role = 'piano', m.bandName = 'Luna' WHERE m.musicianName = 'Luna';

