-- CREATE EXTENSION dblink;

SELECT remote_data.*, uv.since FROM user_vip as uv
JOIN
dblink(
	'dbname=mattu_trains
	port=5432
	host=127.0.0.1
	user=user_query
	password=ale16',
	'SELECT * FROM passenger'
) AS remote_data( address character varying, id integer, name character varying(100),birth_date date)
ON uv.id = remote_data.id;