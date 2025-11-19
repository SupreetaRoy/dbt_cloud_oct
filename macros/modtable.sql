{% macro add_column(table_name, column_name, data_type) %}
    alter table {{ table_name }}
    add column if not exist {{ column_name }} {{ data_type }};
{% endmacro %}