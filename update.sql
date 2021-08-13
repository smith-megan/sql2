1.
UPDATE customer
SET company='Self'
WHERE company IS null;

2.

UPDATE customer
SET last_name='Thompson'
WHERE first_name='Julia'AND last_name='Barnett';

3.

UPDATE customer
SET support_rep_id=4
WHERE email='luisrojas@yahoo.cl';

4.
UPDATE track 
SET composer='The darkness around us'
WHERE genre_id=(SELECT g.genre_id FROM genre g WHERE name='Metal')
AND composer IS null;
