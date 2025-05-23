select 
  employee_id,
  {{ adjust_bonus('bonus_amount') }} as adjusted_bonus
from {{ source('dbt_tutorial', 'raw_performance') }}

