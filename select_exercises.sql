USE codeup_test_db;

SELECT 'All albums by Pink Floyd';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'Year Sgt. Pepper''s Lonely Hearts Club Band was released';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre for Nirvana''s classic album Nevermind';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT 'Albums released in the 1990''s' ;
SELECT artist, name, release_date FROM albums WHERE release_date BETWEEN 1990 AND 2000;

SELECT 'Albums with less than 20 mil certified sales';
SELECT artist, name, sales FROM albums WHERE sales < 20;

SELECT 'Albums with genre of just Rock';
SELECT artist, name, genre FROM albums WHERE genre = 'Rock';

SELECT 'Albums with any genre of Rock';
SELECT artist, name, genre FROM albums WHERE genre = '%rock%';
