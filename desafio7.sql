SELECT 
    art.nome_artista AS artista,
    alb.nome_album AS album,
    COUNT(seg.artista_id) AS seguidores
FROM
    SpotifyClone.artistas AS art
        INNER JOIN
    SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
        INNER JOIN
    SpotifyClone.seguindo_artistas AS seg ON art.artista_id = seg.artista_id
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album;