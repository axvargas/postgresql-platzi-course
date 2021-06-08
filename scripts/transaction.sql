BEGIN;
INSERT INTO public.station(
	name, address)
	VALUES ('Plop Station', 'Bunrutty tag');
INSERT INTO public.train(
	id, model, capacity)
	VALUES (1001, 'Model X', 500);
COMMIT;

-- si una falla, todo se realiza rollback