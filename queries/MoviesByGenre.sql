SELECT genres.genre_name as "Genre Name", COUNT(*) AS "Number of Movies"
FROM genres
JOIN movies ON genres.genre_id = movies.genre
GROUP BY genres.genre_id
ORDER BY COUNT(*) DESC;
