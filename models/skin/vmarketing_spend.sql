WITH users_per_channel AS (
    SELECT marketing_channel, COUNT(DISTINCT user_id) AS channel_users
    FROM `skin-354013.skin_case_study.subscriptions`
    GROUP BY 1)
SELECT b.marketing_channel, b.monthly_total_spend, a.channel_users, ROUND(b.monthly_total_spend / a. channel_users, 2) AS cost_per_user
FROM users_per_channel a
INNER JOIN  `skin-354013.skin_case_study.marketing_spend` b
ON a.marketing_channel = b.marketing_channel
ORDER BY 4 ASC