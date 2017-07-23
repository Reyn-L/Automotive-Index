-- CREATE USER indexed_cars_user WITH ENCRYPTED PASSWORD 'secret';
-- CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;
-- \c indexed_cars

--SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--57.958ms

--SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--57.540ms

--SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--52.947ms

--SELECT * FROM car_models WHERE year >=  2010 AND year <= 2015;
--155.683ms