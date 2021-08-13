CREATE VIEW all_artwork_info AS 
SELECT a.year "year", p.name painter, a.name title, e.name era
FROM artworks a
JOIN painters p
ON a.painter_id = p.painter_id
JOIN eras e
ON a.artwork_id = e.era_id
ORDER BY a.year;

SELECT * FROM all_artwork_info
WHERE year <1504;

SELECT * FROM painters
WHERE era_id IN (
SELECT era_id FROM eras 
	WHERE name='Cubism'  
)

CREATE VIEW new_m_paintings AS
SELECT name, year FROM artworks
WHERE painter_id IN (
SELECT painter_id FROM painters 
	WHERE name LIKE 'M%'  
)
AND artworks.year > 1700;

DELETE FROM artworks
WHERE painter_id IN (
  SELECT painter_id FROM painters
  WHERE era_id IN (
    SELECT era_id FROM eras WHERE name LIKE 'I%')
);
