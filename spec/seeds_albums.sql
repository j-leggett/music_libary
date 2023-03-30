-- First, you'd need to truncate the table - this is so our table is emptied between each test run,
-- so we can start with a fresh state.
-- (RESTART IDENTITY resets the primary key)

TRUNCATE TABLE albums RESTART IDENTITY; -- replace with your own table name.
TRUNCATE TABLE artists RESTART IDENTITY; -- replace with your own table name.

-- Below this line there should only be `INSERT` statements.
-- Replace these statements with your own seed data.
INSERT INTO artists (name, genre) VALUES ('Kanye west', 'hip-hop');
INSERT INTO artists (name, genre) VALUES ('Mac Miller', 'rap');

INSERT INTO albums (title, release_year, artist_id)
VALUES ('Graduation', '2007', '1');
INSERT INTO albums (title, release_year, artist_id)
VALUES ('Blue Side Park', '2011', '2');