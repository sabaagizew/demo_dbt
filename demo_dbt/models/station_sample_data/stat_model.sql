{{ config(materialized='view') }}

with source as (
    select * from {{ ref('station') }}
),

stage_summary as

(

select 
    ID,
    flow_99,
    flow_max,
    flow_median,
    flow_total,
    sqly 

from source
)

select * from station