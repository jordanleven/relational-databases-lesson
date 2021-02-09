SELECT
theme_parks.location,
COUNT(*) AS number_of_rides
FROM rides
JOIN theme_parks ON rides.theme_park_id = theme_parks.theme_park_id
GROUP BY theme_parks.location;
