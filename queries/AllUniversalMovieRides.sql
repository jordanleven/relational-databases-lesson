SELECT movies.title as "Movie Name", rides.name as "Ride Name"
FROM movies
JOIN studios ON movies.studio = studios.studio_id
JOIN rides ON movies.movie_id = rides.movie_id
WHERE studios.studio_name = "Universal Studios";
