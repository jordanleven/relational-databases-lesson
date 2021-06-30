SELECT rides.name as "Ride Name"
FROM rides
JOIN theme_parks ON rides.theme_park_id = theme_parks.theme_park_id
WHERE theme_parks.location = "Hollywood";
