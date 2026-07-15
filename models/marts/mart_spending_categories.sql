SELECT country, year, 'Defense' AS category,
    amt_defense AS amount_billions,
    pct_defense AS percentage
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Education',
    amt_education, pct_education
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Health',
    amt_health, pct_health
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Infrastructure',
    amt_infrastructure, pct_infrastructure
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Social Welfare',
    amt_social_welfare, pct_social_welfare
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Agriculture',
    amt_agriculture, pct_agriculture
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Interest Payments',
    amt_interest, pct_interest
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'State Transfers',
    amt_state_transfers, pct_state_transfers
FROM {{ ref('stg_global_budgets') }}

UNION ALL
SELECT country, year, 'Administration',
    amt_admin, pct_admin
FROM {{ ref('stg_global_budgets') }}