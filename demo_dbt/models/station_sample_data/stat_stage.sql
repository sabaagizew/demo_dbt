{{ config(materialized='view') }}
with source as (

    select TOP (10000) from {{ ref('station')}}


),

stage_station as (
    select 
        ID,
        Fwy,
        Dir,
        County,
        City,
        State_PM,
        Abs_PM,
        Latitude,
        Longitude,
        Length,
        Type,
        Lanes,
        Name,
        User_ID_1,
        User_ID_2,
        User_ID_3,
        User_ID_4
    from source
)
select * from stage_station