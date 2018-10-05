USE codeup_test_db;

SELECT name AS 'All albums in table', sales FROM albums;
UPDATE albums SET sales = sales * 10;
SELECT name AS 'All albums in table', sales FROM albums;


SELECT name AS 'All Albums released before 1980', release_date FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 1000 WHERE release_date < 1980;
SELECT name AS 'All Albums released before 1980', release_date FROM albums WHERE release_date < 1980;

SELECT name AS 'All albums by Michael Jackson', artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT name AS 'All albums by Michael Jackson', artist FROM albums WHERE artist = 'Peter Jackson';
