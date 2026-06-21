with source as (
    select * from {{ ref('accounts') }}
),

renamed as (
    select
        account_id,customer_id,product_id,branch_id,account_status,open_date,close_date,current_balance
    from source
)

select * from renamed