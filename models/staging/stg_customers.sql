select
    id as customer_id,
    first_name,
    last_name

from {{ source('snowflake_jaffle_shop', 'customers') }}