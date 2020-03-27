--cara pertama
select cities.id,cities.name, weather.city from cities, weather where cities.id_weather = weather.id
-- cara kedua
select * from cities left join weather on cities.id_weather = weather.id

--LEFT JOIN USING id return data all 
select * from weather LEFT JOIN cities USING(id)
--INNER JOIN return data only join 
select * from weather INNER JOIN cities USING(id)
-- INNER NATURAL JOIN
select * from weather NATURAL INNER JOIN cities