INSERT INTO public.binnacle_journey(
	id_journey, date)
	VALUES (1, '2010-01-10');
	
CREATE TABLE binnacle_journey_2010_01 PARTITION OF binnacle_journey
FOR VALUES FROM ('2010-01-01') TO ('2010-01-31');

SELECT * FROM binnacle_journey;