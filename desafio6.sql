SELECT ROUND(MIN(u_p.plan_value), 2) AS 'faturamento_minimo',
        ROUND(MAX(u_p.plan_value), 2) AS 'faturamento_maximo',
        ROUND(AVG(u_p.plan_value), 2) AS 'faturamento_medio',
        ROUND(SUM(u_p.plan_value), 2) AS 'faturamento_total'
FROM `user_plan` AS u_p
RIGHT JOIN `user` AS u
ON u_p.id = u.plan_id;