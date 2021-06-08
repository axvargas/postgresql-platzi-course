-- DROP FUNCTION pl_for_trigger();

-- CREATE PL FOR THE TRIGGER -------------------------------------------------
CREATE OR REPLACE FUNCTION public.pl_for_trigger(
	)
    RETURNS TRIGGER
    LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
	-- variable type_var := valor
	rec record;
	counter integer := 0;
BEGIN
	FOR rec IN SELECT * FROM passenger
	LOOP
		counter := counter +1;
	END LOOP;
	INSERT INTO passenger_counter(total, saved_on) VALUES(counter, now());
	RETURN NEW;
END;
$BODY$;