-- simple name change and cast of raw_listings table 
with raw_listings as (
    select * from AIRBNB.PUBLIC.BERLIN_LISTINGS
),

src_listings as (

select
    id as listing_id,
    name as listing_name,
    room_type,
    cast(price as integer) as price,
    cast(min_nights as integer) as min_nights,
    cast(number_of_reviews as integer) as number_of_reviews,
    cast(last_review_date as date) as last_review_date,
    cast(reviews_per_month as float) as reviews_per_month,
    cast(host_listing_count as integer) as host_listing_count,
    cast(availability_365 as integer) as availability_365,
    cast(reviews_past_year as integer) as reviews_past_year
from raw_listings
)

select * from src_listings