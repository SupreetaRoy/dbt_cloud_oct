with nation_info as (
select 
n.nation_id,
n.name as n1,
n.REGION_ID,
n.comment as nation_comment,
r.name as n2,
r.comment as region_comment
from {{ref('stg_nations')}} n 
join {{ref('stg_regions')}} r
    on n.REGION_ID = r.region_id
)

select * from nation_info
