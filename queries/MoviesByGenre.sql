SELECT
genres.genre_name,
COUNT(*) AS numberOfMovies
FROM genres
JOIN movies ON genres.genre_id = movies.genre
GROUP BY genres.genre_id;
