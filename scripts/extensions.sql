-- CREATE EXTENSION fuzzystrmatch; 
SELECT levenshtein('Andrew', 'Ale');

SELECT difference('Andres', 'Andrew');