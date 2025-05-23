{% set cols = ['employee_id', 'first_name', 'last_name', 'department'] %}

select 
  {{ select_columns(cols) }}
from {{ source('dbt_tutorial', 'raw_employees') }}

