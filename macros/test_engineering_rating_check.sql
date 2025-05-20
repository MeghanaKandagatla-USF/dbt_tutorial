{% test engineering_rating_check_macro(model) %}
    SELECT *
    FROM {{ model }}
    WHERE department = 'Engineering' AND avg_rating < 3.5
{% endtest %}