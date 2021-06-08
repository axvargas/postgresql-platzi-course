ALTER TABLE public.route ADD CONSTRAINT route_train_fkey FOREIGN KEY (id_train)
    REFERENCES public.train (id) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE CASCADE
	
ALTER TABLE public.journey
    ADD CONSTRAINT journey_passenger_fkey FOREIGN KEY (id_passenger)
    REFERENCES public.passenger (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    NOT VALID;