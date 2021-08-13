1.
SELECT invoice_id FROM invoice
WHERE invoice_id IN (
  SELECT invoice_id FROM invoice_line
  WHERE unit_price>.99);

2.

SELECT * FROM playlist_track pt
WHERE playlist_id IN (
  SELECT playlist_id FROM playlist p
  WHERE name = 'Music');

  3.
SELECT name FROM track
WHERE track_id in
(SELECT track_id FROM playlist_track p
WHERE playlist_id = 5)
4.
SELECT name FROM track
WHERE genre_id in
(SELECT genre_id FROM genre g
WHERE g.name = 'Comedy')
5.
SELECT * FROM track
WHERE album_id in
(SELECT album_id FROM album a
WHERE a.title = 'Fireball')
6.
SELECT name FROM track
WHERE album_id in
(SELECT album_id FROM album a
WHERE artist_id in ( 
  SELECT artist_id FROM artist art
 WHERE art.name = 'Queen'))