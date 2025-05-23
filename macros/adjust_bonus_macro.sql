{% macro adjust_bonus(col) %}
  round({{ col }} * 1.1, 2)
{% endmacro %}
