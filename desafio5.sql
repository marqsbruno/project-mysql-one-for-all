SELECT mu.nome_musica AS cancao,
	COUNT(hist.musica_id) AS reproducoes
    FROM SpotifyClone.musicas AS mu
    INNER JOIN SpotifyClone.historico_reproducao as hist
		ON mu.musica_id = hist.musica_id
	GROUP BY mu.musica_id
	ORDER BY reproducoes DESC,  mu.nome_musica LIMIT 2