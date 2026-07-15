SELECT
    country,
    year,
    total_budget,
    pct_defense,
    pct_education,
    pct_health,
    pct_social_welfare,
    pct_infrastructure,
    pct_agriculture,
    pct_interest,
    pct_state_transfers,
    pct_admin,
    amt_defense,
    amt_education,
    amt_health,
    amt_social_welfare,
    amt_infrastructure
FROM {{ ref('stg_global_budgets') }}
ORDER BY country, year