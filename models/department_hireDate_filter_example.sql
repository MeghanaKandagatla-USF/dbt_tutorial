{% set selected_department = 'Engineering' %}

select *
from {{ source('dbt_tutorial', 'raw_employees') }}
{% if selected_department == 'Engineering' %}
  where hire_date >= '2020-01-01'
{% else %}
  where hire_date >= '2018-01-01'
{% endif %}
