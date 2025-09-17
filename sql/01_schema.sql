-- 01_schema.sql
-- Create staging and analytics tables for service demand & capacity planning

CREATE TABLE IF NOT EXISTS staging_daily_demand (
  date DATE,
  location VARCHAR(64),
  appointments INT
);

-- Weekly aggregates
CREATE TABLE IF NOT EXISTS weekly_demand AS
SELECT
  location,
  DATE_TRUNC('week', date) AS week,
  SUM(appointments) AS appointments
FROM staging_daily_demand
GROUP BY 1,2;

-- Forecast & capacity (to be loaded from Python outputs)
CREATE TABLE IF NOT EXISTS forecast_capacity (
  location VARCHAR(64),
  week DATE,
  forecast_appointments DOUBLE PRECISION,
  buffered_demand DOUBLE PRECISION,
  weekly_capacity_per_tech DOUBLE PRECISION,
  required_techs INT
);
