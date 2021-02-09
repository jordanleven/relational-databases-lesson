SELECT
movies.title
FROM rides
JOIN theme_parks ON rides.theme_park_id = theme_parks.theme_park_id
JOIN movies ON rides.movie_id = movies.movie_id
WHERE theme_parks.location = "Hollywood";
