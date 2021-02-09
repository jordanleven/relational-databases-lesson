SELECT
movies.title,
studios.studio_name
FROM movies
JOIN studios ON movies.studio = studios.studio_id
WHERE studios.studio_name = "Universal";
