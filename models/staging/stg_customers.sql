with source as (
    select * from {{ ref('customers') }}
),

renamed as (
    select
        customer_id,
        first_name,
        last_name,
        document_type,
        document_number,
        birth_date,
        gender,
        city,
        segment,
        signup_date,
        email,
        phone
    from source
)

select * from renamed