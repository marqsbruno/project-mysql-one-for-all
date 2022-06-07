SELECT
	MIN(plan.valor) AS faturamento_minimo,
    MAX(plan.valor) AS faturamento_maximo,
    ROUND(AVG(plan.valor), 2) AS faturamento_medio,
    SUM(plan.valor) AS faturamento_total
FROM SpotifyClone.usuarios
	INNER JOIN SpotifyClone.planos AS plan ON plan.plano_id = usuarios.plano_id;