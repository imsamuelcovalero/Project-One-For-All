SELECT u.user_name AS usuario,
CASE WHEN MAX(r.reproduction_date) BETWEEN '2021-01-01' AND '2021-12-31' THEN 'Usuário ativo' ELSE 'Usuário inativo' END AS condicao_usuario
FROM `user` AS u
INNER JOIN `reproduction_history` AS r
ON u.id = r.user_id
GROUP BY usuario ORDER BY usuario;