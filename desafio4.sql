SELECT us.nome_usuario AS usuario,
	IF (MAX(YEAR(hist.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo')
		AS condicao_usuario
    FROM SpotifyClone.usuarios AS us
	INNER JOIN SpotifyClone.historico_reproducao AS hist
		ON us.usuario_id = hist.usuario_id
	GROUP BY us.nome_usuario
	ORDER BY us.nome_usuario ASC;