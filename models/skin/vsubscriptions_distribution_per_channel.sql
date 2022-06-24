WITH subscriptions_per_user AS(
    SELECT marketing_channel, user_id, COUNT(DISTINCT subscription_id) AS num_subscriptions
    FROM `skin-354013.skin_case_study.subscriptions`
    GROUP BY 1,2)
SELECT marketing_channel, num_subscriptions, COUNT(user_id) AS number_of_cust
  FROM subscriptions_per_user
  GROUP BY 1,2
  ORDER BY 1,2
