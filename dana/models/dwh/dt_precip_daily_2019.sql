#standardSQL
#ft_yelp_tip
#dbt transforms a table by directly materializing a SQL query’s result as tables, therefore a DDL-style query is not needed.


SELECT *, CURRENT_DATETIME() processed_dttm
FROM `ods.dt_precip_daily_2019`