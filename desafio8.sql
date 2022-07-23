SELECT ar.artist_name AS artista, al.album_name AS album
FROM `artists` AS ar
LEFT JOIN `albums` AS al
ON ar.id = al.artist_id
WHERE ar.artist_name = 'Walter Phoenix' ORDER BY album;