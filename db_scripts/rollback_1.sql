ALTER TABLE musician DROP COLUMN role;

ALTER TABLE musician DROP FOREIGN KEY FK_bandName;
ALTER TABLE musician DROP COLUMN bandName;

DROP TABLE band;

ALTER TABLE musician RENAME TO singer;
ALTER TABLE singer RENAME COLUMN musicianName TO singerName;