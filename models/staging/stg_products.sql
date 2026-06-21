with source as (
    select * from {{ ref('products') }}
),

renamed as (
    select
        product_id,product_name,product_category,interest_rate,annual_fee
    from source
)

select * from renamed