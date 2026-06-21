with source as (
    select * from {{ ref('employees') }}
),

renamed as (
    select
        employee_id,employee_name,role,branch_id,hire_date
    from source
)

select * from renamed