SELECT COUNT(r.song_id) AS 'quantidade_musicas_no_historico'
FROM `reproduction_history` AS r
INNER JOIN `user` AS u
ON r.user_id = u.id
WHERE u.user_name = 'Bill';