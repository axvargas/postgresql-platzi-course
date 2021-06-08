-- To install dblink
-- CREATE EXTENSION dblink;

-- GET THE DATA FROMREMOTE DB 
SELECT * FROM 
dblink(
	'dbname=remote
	port=5432
	host=127.0.0.1
	user=user_query
	password=ale16',
	'SELECT * FROM user_vip'
) AS remote_data (id integer, since timestamp with time zone);

-- JOIN DATA FROM REMOTE DB
SELECT p.*, remote_data.since FROM passenger AS p
JOIN
dblink(
	'dbname=remote
	port=5432
	host=127.0.0.1
	user=user_query
	password=ale16',
	'SELECT * FROM user_vip'
) AS remote_data (id integer, since timestamp with time zone)
--Es lo mismo que el ON solo que con el mismo nombre de variable
USING  (id);