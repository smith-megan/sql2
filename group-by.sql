SELECT COUNT(*), g.name AS "genre"
FROM track t
JOIN genre g
ON g.genre_id=t.genre_id
GROUP BY g.name

SELECT COUNT(*), g.name AS "genre"
FROM track t
JOIN genre g
ON g.genre_id=t.genre_id
WHERE g.name='Rock' OR g.name='Pop'
GROUP BY g.name

SELECT a.name, COUNT(*) FROM artist a
JOIN album al
ON a.artist_id=al.artist_id
GROUP by a.name