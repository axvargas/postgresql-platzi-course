SELECT * FROM is_adult_view;

SELECT * FROM journey WHERE starts::time > '22:00:00';

REFRESH MATERIALIZED VIEW night_rides_mview;
SELECT * FROM night_rides_mview;
