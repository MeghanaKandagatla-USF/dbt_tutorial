WITH review_summary AS (
    SELECT
        employee_id,
        AVG(rating) AS avg_rating,
        SUM(bonus_amount) AS total_bonus
    FROM raw_performance
    GROUP BY employee_id
)

SELECT
    e.employee_id,
    e.first_name,
    e.last_name,
    e.department,
    r.avg_rating,
    r.total_bonus,
    CASE
        WHEN r.avg_rating >= 4.5 THEN 'Rank1'
        WHEN r.avg_rating >= 3.5 THEN 'Rank2'
        WHEN r.avg_rating >= 2.5 THEN 'Rank3'
        ELSE 'Rank4'
    END AS performance_tier
FROM raw_employees e
JOIN review_summary r ON e.employee_id = r.employee_id
