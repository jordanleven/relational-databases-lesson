SELECT theme_parks.location as "Theme Park Location", ROUND(SUM(movies.duration) / 60, 2) AS "Movie Length (hours)"
FROM rides
JOIN theme_parks ON rides.theme_park_id = theme_parks.theme_park_id
JOIN movies ON rides.movie_id = movies.movie_id
GROUP BY theme_parks.location
ORDER BY theme_parks.location ASC;
