SELECT 
    ID
    ,ORDERID as order_id
    ,PAYMENTMETHOD as payment_method
    ,STATUS
    ,(AMOUNT / 100) as amount
    ,CREATED
    ,_BATCHED_AT
FROM {{ source('snowflake_stripe', 'payment') }}
