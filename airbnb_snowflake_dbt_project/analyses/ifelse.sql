{% set FLAG = 2%}
select * from {{ ref('bronze_bookings') }}
{% if FLAG == 1 %}
where NIGHTS_BOOKED > 1
{% else %}
where NIGHTS_BOOKED = 1
{% endif %}