SELECT rides.name as "Name" FROM rides
JOIN (
	SELECT rides.name, rides.movie_id
	FROM rides
	GROUP BY rides.movie_id
	HAVING COUNT(*) > 1
) r
ON rides.movie_id = r.movie_id
GROUP BY rides.name
HAVING COUNT(*) = 1;
