-- all passengers that have never travel
SELECT DISTINCT p.* FROM passenger p
LEFT JOIN journey j ON p.id = j.id_passenger
WHERE j.id_passenger IS NULL;

-- all passengers that have travel at least one time
SELECT DISTINCT p.* FROM passenger p
LEFT JOIN journey j ON p.id = j.id_passenger
WHERE j.id_passenger IS NOT NULL;

--SELECT * FROM journey
--WHERE id_passenger = 4;