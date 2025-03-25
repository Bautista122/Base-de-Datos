SELECT * FROM crime_scene_report WHERE date = 20180115 and type = "murder" and city = "SQL City"
SELECT * FROM person WHERE address_street_name = "Northwestern Dr"
ORDER BY address_number desc limit 1 
SELECT * FROM person WHERE address_street_name = "Franklin Ave" and name like "Annabel%" 
SELECT * FROM interview
INNER JOIN person ON interview.person_id = person.id
WHERE person.name like 'annabel miller'