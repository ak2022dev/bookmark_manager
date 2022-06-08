After creating the table the following shows there are no rows in it initially:

SELECT * FROM bookmarks;


To add four links into the table use these statements:

INSERT INTO bookmarks (url)
VALUES('http://www.makersacademy.com/');

INSERT INTO bookmarks(url)
VALUES('http://www.twitter.com/';

INSERT INTO bookmarks(url)
VALUES('http://www.google.com/');

INSERT INTO bookmarks(url)
VALUES('http://www.twitter.com');


Below is useful to frequently confirm we have achieved what we wanted:

SELECT * FROM bookmarks;


To delete http://www.askjeeves.com:

DELETE FROM bookmarks
WHERE url = 'http://www.askjeeves.com';


To update http://www.twitter.com to http://www.destroyallsoftware.com :

UPDATE bookmarks
SET url = 'http://www.destroyallsoftware.com'
WHERE url = 'http://www.twitter.com';


