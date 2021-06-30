SELECT theme_parks.location as "Theme Park Location", COUNT(*) AS "Number of Rides"
FROM rides
JOIN theme_parks ON rides.theme_park_id = theme_parks.theme_park_id
GROUP BY theme_parks.location
ORDER BY theme_parks.location ASC;
