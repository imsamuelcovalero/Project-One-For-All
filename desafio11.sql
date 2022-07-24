SELECT s.song AS nome_musica,
CASE
    WHEN s.song LIKE '%Her Own%' THEN REPLACE("Dance With Her Own", 'Her Own', 'Trybe')
    WHEN s.song LIKE '%Silly%' THEN REPLACE("Let's Be Silly", 'Silly', 'Nice')
    WHEN s.song LIKE '%Circus%' THEN REPLACE("Magic Circus", 'Circus', 'Pull Request')
    WHEN s.song LIKE '%Inner Fire%' THEN REPLACE("Troubles Of My Inner Fire", 'Inner Fire', 'Project')
    WHEN s.song LIKE '%Streets%' THEN REPLACE("Without My Streets", 'Streets', 'Code Review')
END AS novo_nome
FROM `songs` AS s
WHERE s.song IN ("Dance With Her Own", "Let's Be Silly", "Magic Circus", "Troubles Of My Inner Fire", "Without My Streets")
ORDER BY nome_musica;