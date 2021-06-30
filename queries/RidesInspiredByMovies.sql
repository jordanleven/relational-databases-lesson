SELECT movies.title as "Movie", COUNT(*) as "Number of Rides"
FROM rides
JOIN movies ON rides.movie_id = movies.movie_id
GROUP BY rides.movie_id
ORDER BY COUNT(*) DESC;
