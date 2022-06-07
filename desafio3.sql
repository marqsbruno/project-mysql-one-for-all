SELECT us.nome_usuario AS usuario,
	COUNT(hist.usuario_id) AS qtde_musicas_ouvidas,
	ROUND (SUM(mu.duracao_segundos) /60, 2) AS total_minutos
FROM SpotifyClone.usuarios as us
INNER JOIN SpotifyClone.historico_reproducao as hist ON us.usuario_id = hist.usuario_id
INNER JOIN SpotifyClone.musicas as mu ON mu.musica_id = hist.musica_id
GROUP BY us.nome_usuario
ORDER BY us.nome_usuario;