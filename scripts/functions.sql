DO $$
DECLARE
	-- variable type_var := valor
	rec record;
	counter integer := 0;
BEGIN
	FOR rec IN SELECT * FROM passenger
	LOOP
		RAISE NOTICE 'The name of the passenger is %', rec.name;
		counter := counter +1;
	END LOOP;
	RAISE NOTICE 'The number of passengers is: %', counter;
END;
$$

-- CREAR FUNCIONES-------------------------------------
CREATE OR REPLACE FUNCTION importantPL()
	-- Se especifica el tipo de dato que retorna
	RETURNS integer
	-- Hay que especificar el lenguaje a utilizar
	LANGUAGE PLPGSQL;
AS $$
DECLARE
	-- variable type_var := valor
	rec record;
	counter integer := 0;
BEGIN
	FOR rec IN SELECT * FROM passenger
	LOOP
		RAISE NOTICE 'The name of the passenger is %', rec.name;
		counter := counter +1;
	END LOOP;
	RAISE NOTICE 'The number of passengers is: %', counter;
	RETURN counter;
END;
$$


-- DROP FUNCTION importantPL();

-- CALL THE FUNCTION
SELECT importantPL();

