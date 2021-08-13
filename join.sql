1. 

SELECT * FROM invoice i
JOIN invoice_line il
ON i.invoice_id=il.invoice_id
WHERE unit_price>.99;

2.

SELECT i.invoice_date, c.first_name, c.last_name, i.total FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

3.
SELECT c.first_name, c.last_name, e.first_name, e.last_name FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;
4.?

5.
SELECT a.title, art.name FROM album a
JOIN artist art
ON a.artist_id = art.artist_id;

6.
SELECT playlist_track_id FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id
WHERE p.name LIKE 'Music';

7.
SELECT t.name FROM track t
JOIN playlist_track pt
ON pt.playlist_id = t.track_id
JOIN playlist p
ON p.playlist_id = t.track_id;

8.

SELECT t.name track, p.name playlistname FROM track t
JOIN playlist_track pt
ON pt.playlist_id = t.track_id
JOIN playlist p
ON p.playlist_id = t.track_id;

9.
SELECT t.name, a.title FROM track t
JOIN album a
ON a.album_id = t.album_id
JOIN genre g
ON g.genre_id = t.genre_id
WHERE g.name LIKE 'Alternative & Punk';