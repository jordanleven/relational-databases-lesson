SELECT movies.title as "Movie Name", rides.name as "Ride Name"
FROM rides
JOIN movies ON rides.movie_id = movies.movie_id
JOIN studios ON movies.studio = studios.studio_id
WHERE studios.studio_name = "Universal Studios";
