SELECT ar.artist_name AS artista, al.album_name AS album, COUNT(f.artist_id) AS seguidores
FROM `artists` AS ar
LEFT JOIN `albums` AS al
ON ar.id = al.artist_id
LEFT JOIN `following_artist` AS f
ON ar.id = f.artist_id
GROUP BY artista, album ORDER BY seguidores DESC, artista, album;
