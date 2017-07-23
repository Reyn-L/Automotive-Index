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

CREATE INDEX car_models_make_title_idx ON car_models (make_title);

CREATE INDEX car_models_model_title_idx ON car_models (model_title);

SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';
--42.185ms

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--42.784ms

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';
--52.532ms

SELECT * FROM car_models WHERE year >=  2010 AND year <= 2015;
--163.127ms

SELECT * FROM car_models WHERE year = 2010;
--60.647ms
