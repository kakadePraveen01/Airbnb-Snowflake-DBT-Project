{% macro tags(col) %}
case
when {{col}} < 100 then 'low'
when {{col}} >= 100 and {{col}} < 200 then 'medium'
when {{col}} >= 200 then 'high'
else 'unknown'
end
{% endmacro %}