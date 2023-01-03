#standardSQL
#ft_overall_reviews_with_weather_data
#A derived table to materialize the join between reviews and climate table


WITH dte AS(
SELECT CAST(reviews.date AS date) dte, *
FROM `ods.yelp_academic_dataset_review` reviews
)

SELECT dte.dte, dte.index, dte.review_id, dte.user_id, dte.business_id, dte.stars, dte.useful, dte.funny, dte.cool, dte.text, dte.date, clim.STATION, clim.LATITUDE, clim.LONGITUDE, clim.ELEVATION, clim.PRCP
FROM dte
INNER JOIN `ods.us_climate_philadelphia_daily_2019` clim
ON dte.dte = clim.DATE
