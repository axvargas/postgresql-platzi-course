-- TRIGGER -------------------------------------------------------
CREATE TRIGGER my_trigger
AFTER INSERT
ON passenger
FOR EACH ROW
EXECUTE PROCEDURE pl_for_trigger();