{% set bonus_multiplier = 1.1 %}

select 
  employee_id,
  round(bonus_amount * {{ bonus_multiplier }}, 2) as adjusted_bonus
from {{ source('dbt_tutorial', 'raw_performance') }}

