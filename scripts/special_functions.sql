-- ON CONFLICT DO --------------------------------------------------------------------

-- INSERT INTO public.station(
-- 	id, name, address)
-- 	VALUES (1, 'Play Station', 'Kentucky')
-- 	ON CONFLICT DO NOTHING;

INSERT INTO public.station(
	id, name, address)
	VALUES (1, 'Play Station', '90291 Hollow Ridge Alley')
	ON CONFLICT(id) DO UPDATE SET name='Play Station', address='90291 Hollow Ridge Alley';
	

-- RETURNING ---------------------------------------------------------------------------
INSERT INTO public.station(
	name, address)
	VALUES ('Poli Station', 'ESPOL')
	RETURNING id;
	
-- LIKE/ILIKE --------------------------------------------------------------------------
SELECT name FROM passenger
WHERE name ILIKE 'o%';

-- COALESCE ----------------------------------------------------------------------------
INSERT INTO public.station(
	name)
	VALUES ('Puti Station')
	RETURNING id;
--1002
SELECT id, name, COALESCE(address, 'n/a') AS address FROM station
WHERE id = 1002;

-- NULLIF ------------------------------------------------------------------------------
SELECT NULLIF(0,1); -- if 0 == 1 return null
SELECT NULLIF(0,0);
SELECT NULLIF('hola', 'ji');
SELECT NULLIF('hola', 'hola');


-- GREATEST/LEAST ----------------------------------------------------------------------
SELECT GREATEST (2,1,5,48,64,541,51,321,84,65,1);
SELECT LEAST (2,1,5,48,64,541,51,321,84,65,1);


-- BLOQUES ANONIMOS --------------------------------------------------------------------
SELECT id, name, address, birth_date, 
	CASE
		WHEN birth_date < (now()-interval '18 years')
		THEN True
		ELSE False
	END AS is_adult,
	CASE 
		WHEN name ILIKE 'o%'
		THEN True
		ELSE False
	END AS starts_with_o
FROM passenger;
