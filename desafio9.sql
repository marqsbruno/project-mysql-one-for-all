SELECT 
    COUNT(hist.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.historico_reproducao AS hist
        INNER JOIN
    SpotifyClone.usuarios AS us ON us.usuario_id = hist.usuario_id
WHERE
    us.nome_usuario = 'Bill';