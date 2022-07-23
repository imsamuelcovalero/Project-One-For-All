SELECT 
u.user_name AS usuario,
COUNT(r.user_id) AS qtde_musicas_ouvidas,
ROUND(SUM(s.duration_secs) / 60, 2) AS total_minutos

FROM `reproduction_history` AS r
INNER JOIN `user` AS u
ON r.user_id = u.id
INNER JOIN `songs` AS s
ON r.song_id = s.id
GROUP BY usuario ORDER BY usuario;