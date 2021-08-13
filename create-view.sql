1. 1297
CREATE VIEW rock AS
SELECT name FROM track
WHERE genre_id in
(SELECT genre_id FROM genre g
WHERE g.name = 'Rock')
2. 75
CREATE VIEW classical_count AS
SELECT COUNT(*) FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id
WHERE p.name = 'Classical'

SELECT * from classical_count