\timing
DROP USER IF EXISTS indexed_cars_user;
DROP DATABASE IF EXISTS indexed_cars;
CREATE USER indexed_cars_user WITH ENCRYPTED PASSWORD 'secret';
CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;
\c indexed_cars

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--57.958ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--57.540ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--52.947ms

SELECT * FROM car_models WHERE year >=  2010 AND year <= 2015;
--155.683ms

SELECT * FROM car_models WHERE year = 2010;
--67.812ms

DROP INDEX IF EXISTS car_models_make_title_idx;
DROP INDEX IF EXISTS car_models_model_title_idx;
DROP INDEX IF EXISTS car_models_year_idx;

CREATE INDEX car_models_make_title_idx ON car_models (make_title);

CREATE INDEX car_models_model_title_idx ON car_models (model_title);

CREATE INDEX car_models_year_idx ON car_models (year);

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--34.008ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--42.784ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--49.502ms

SELECT * FROM car_models WHERE year >=  2010 AND year <= 2015;
--156.906ms

SELECT * FROM car_models WHERE year = 2010;
--22.996ms
