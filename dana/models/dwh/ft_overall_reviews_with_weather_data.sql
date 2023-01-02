#standardSQL
#ft_overall_reviews_with_weather_data
#A derived table to materialize the join between reviews and climate table


WITH dte AS(
SELECT CAST(reviews.date AS date) dte, *
FROM `ods.yelp_academic_dataset_review` reviews
)

SELECT *
FROM dte
INNER JOIN `ods.us_climate_philadelphia_daily_2019` clim
ON dte.dte = clim.DATE