DROP TABLE matches;
DROP TABLE players;

SELECT * FROM players
LIMIT 10;

SELECT * FROM matches
LIMIT 10;

ALTER TABLE players
DROP COLUMN index;

CREATE TABLE combined_table as
SELECT *
FROM matches
INNER JOIN players
ON matches.home_team = players.nationality_name;

SELECT * FROM combined_table
LIMIT 10;

SELECT COUNT(index)
FROM combined_table;