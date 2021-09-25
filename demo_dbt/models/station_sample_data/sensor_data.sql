{{ config(materialized='view') }}

with median as (

    select * 

    from {{ ref ('stat_median') }}


),

station as (
    select *  from {{ ref ('stat_stage') }}

),

summary as (
    select * from {{ ref ('stat_model') }}

),

final as (
    
    select
    median.ID,
    station.ID,

    


    
    
    
    )