USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(20) ,
  name VARCHAR(30),
  release_date INT UNSIGNED,
  sales FLOAT,
  genre VARCHAR(15),
  PRIMARY KEY (id)
);