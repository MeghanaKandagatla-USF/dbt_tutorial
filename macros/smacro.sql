{% macro convert_percent(column_name) %}
    {{ column_name }} /100
{% endmacro %}
