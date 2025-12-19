select
  order_number,
  order_date,
  customer_name,
  product_code,
  quantity,
  price_each,
  sales_amount,
  deal_size
from {{ ref('stg_sales_data') }}
