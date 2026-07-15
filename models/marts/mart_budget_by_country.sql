SELECT
    country,
    year,
    total_budget,
    pct_defense,
    pct_education,
    pct_health,
    pct_infrastructure,
    pct_social_welfare,
    amt_defense,
    amt_education,
    amt_health,
    amt_infrastructure,
    amt_social_welfare
FROM {{ ref('stg_global_budgets') }}
WHERE year = (SELECT MAX(year) FROM {{ ref('stg_global_budgets') }})