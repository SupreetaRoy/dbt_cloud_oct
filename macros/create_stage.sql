{% macro unload() %}
{% do run_query("create or replace stage stage_analytics") %}
{% do run_query("copy into @stage_analytics from stg_nations partition by (region_id)
file_format = (type = csv compression = none null_if=(' ')) 
header = true;")%}

{% endmacro %}
