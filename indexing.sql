-- CREATE USER indexed_cars_user WITH ENCRYPTED PASSWORD 'secret';
-- CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;
-- \c indexed_cars

--SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--57.958ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--57.540ms
