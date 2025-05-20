SELECT *
FROM {{ ref('employee_rankings') }}
WHERE department = 'Engineering' AND avg_rating < 3.5
