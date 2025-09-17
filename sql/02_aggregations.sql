-- 02_aggregations.sql
-- KPIs to support executive dashboards

-- Average vs. peak weekly demand
SELECT
  location,
  AVG(forecast_appointments) AS avg_weekly_demand,
  MAX(forecast_appointments) AS peak_weekly_demand
FROM forecast_capacity
GROUP BY 1;

-- Headcount recommendations (avg/peak over horizon)
SELECT
  location,
  AVG(required_techs) AS avg_required_techs,
  MAX(required_techs) AS peak_required_techs
FROM forecast_capacity
GROUP BY 1;
