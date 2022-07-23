SELECT s.song AS nome, COUNT(r.song_id) AS reproducoes
FROM `songs` AS s
LEFT JOIN `reproduction_history` AS r
ON s.id = r.song_id
LEFT JOIN `user` AS u
ON r.user_id = u.id
WHERE u.plan_id = 1 OR u.plan_id = 4
GROUP BY nome ORDER BY nome;