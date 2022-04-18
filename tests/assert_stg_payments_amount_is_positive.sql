with

payments as {{ ref('stg_payments') }}
)

select
    order_id,
    sum(amount) as total_amount
from payments
group by order_id
having total_amount < 0