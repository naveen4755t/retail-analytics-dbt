select distinct
  product_code,
  product_line
from {{ ref('stg_sales_data') }}
