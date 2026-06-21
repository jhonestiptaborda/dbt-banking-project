with source as (
    select * from {{ ref('transactions') }}
),

renamed as (
    select
        transaction_id,account_id,employee_id,transaction_date,transaction_type,channel,amount,balance_after
    from source
)

select * from renamed