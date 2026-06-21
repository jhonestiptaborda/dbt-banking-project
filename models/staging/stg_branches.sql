with source as (
    select * from {{ ref('branches') }}
),

renamed as (
    select
        branch_id,branch_name,city,region,branch_type,opening_date
    from source
)

select * from renamed