SELECT
    ord.order_id
    ,ord.customer_id
    ,ord.order_date
    ,pay.status
    ,pay.amount
FROM {{ ref('stg_orders') }} as ord
LEFT JOIN {{ ref('stg_payments') }} as pay
    ON ord.order_id = pay.order_id
WHERE pay.status = 'success'
ORDER BY ord.customer_id