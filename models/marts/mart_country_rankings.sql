SELECT
    country,
    year,
    total_budget,
    RANK() OVER (
        PARTITION BY year
        ORDER BY total_budget DESC
    ) AS budget_rank,
    pct_defense,
    pct_education,
    pct_health,
    pct_social_welfare,
    pct_infrastructure
FROM {{ ref('stg_global_budgets') }}