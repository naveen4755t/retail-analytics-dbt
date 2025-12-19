select distinct
  customer_name,
  city,
  state,
  country
from {{ ref('stg_sales_data') }}
