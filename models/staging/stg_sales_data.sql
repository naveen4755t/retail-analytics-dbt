select
  ORDERNUMBER::number            as order_number,
TO_DATE(ORDERDATE, 'MM/DD/YYYY HH24:MI') as order_date,

  STATUS                          as status,

  CUSTOMERNAME                    as customer_name,
  CITY                            as city,
  STATE                           as state,
  COUNTRY                         as country,

  PRODUCTCODE                     as product_code,
  PRODUCTLINE                     as product_line,

  QUANTITYORDERED::number         as quantity,
  PRICEEACH::number(10,2)         as price_each,
  SALES::number(10,2)             as sales_amount,

  DEALSIZE                        as deal_size
from {{ source('raw', 'sales_data') }}
