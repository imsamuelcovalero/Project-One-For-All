SELECT s.song AS cancao, COUNT(r.song_id) AS reproducoes
FROM `reproduction_history` AS r
INNER JOIN `songs` AS s
ON r.song_id = s.id
GROUP BY cancao ORDER BY reproducoes DESC, cancao LIMIT 2;
