# 👷 Workforce Capacity Planning — Multi-Location Service Operations

## 📝 Project Overview
This project applies **data analytics, forecasting, and scenario planning** to workforce capacity management. 
Using synthetic service demand data across five locations, the project forecasts future demand, determines technician requirements, 
and evaluates how staffing needs vary under different demand scenarios.

It demonstrates a full analytics workflow — from data preparation, forecasting, and capacity modeling to visualization and professional reporting.

By combining predictive modeling and business insights, this project answers questions like:

- How can we forecast weekly service demand across multiple locations?
- What is the required staffing level to maintain service quality under peaks?
- How do demand scenarios (−10%, baseline, +10%) impact technician requirements?

---

## 📑 Table of Contents
- 📂 Repo Structure
- 🎯 Project Goals
- 📊 Data
- ⚡ Quick Start
- 🔎 Exploratory Data Analysis
- 📈 Forecasting & Capacity Planning
- 🧮 Scenario Analysis
- 📊 Visualizations
- 📌 Results
- 📜 License

---

## 📂 Repo Structure
```
Workforce_Capacity_Planning_Project/
├── Workforce_Capacity_Planning.ipynb        # Main Jupyter notebook for analysis
├── outputs/                                 # Analysis outputs
│   ├── capacity_planning_workbook.xlsx
│   ├── capacity_summary.csv
│   ├── demand_forecast_Dublin.png
│   ├── demand_forecast_Fremont.png
│   ├── demand_forecast_Mountain_View.png
│   ├── demand_forecast_Palo_Alto.png
│   ├── demand_forecast_San_Jose.png
│   ├── peak_required_techs.png
│   ├── raw_daily_demand.csv
│   ├── weekly_demand.csv
│   ├── weekly_forecast_capacity.csv
│   ├── Workforce_Capacity_Planning_Report_Professional.pdf
├── sql/                                     # SQL scripts for schema & aggregations
│   ├── 01_schema.sql
│   ├── 02_aggregations.sql
```
---

## 🎯 Project Goals
- Forecast weekly demand across service locations.
- Estimate technician workforce needs under utilization and buffer assumptions.
- Test robustness of staffing under demand fluctuations (scenario planning).
- Deliver executive-ready reports and dashboards for decision-making.

---

## 📊 Data
- Synthetic dataset: Daily service demand across 5 locations (26 weeks).
- Aggregated into weekly demand series.
- Forecast horizon: 8 weeks.
- Staffing assumptions: 30 appointments/week per technician, 85% utilization, 10% buffer.

---

## ⚡ Quick Start
Clone the repo and set up the environment:

```bash
# Clone repository
git clone https://github.com/<your-username>/Workforce-Capacity-Planning.git
cd Workforce-Capacity-Planning

# Install dependencies
pip install -r requirements.txt

# Run Jupyter notebook
jupyter notebook notebooks/Workforce_Capacity_Analysis.ipynb
```

---

## 🔎 Exploratory Data Analysis
Key insights from EDA:
- Clear upward demand trend across weeks.
- San Jose and Palo Alto show consistently higher volumes.
- Smaller sites (Dublin, Mountain View) remain stable but add to aggregate demand.

---

## 📈 Forecasting & Capacity Planning
- **Model**: Exponential Smoothing (with fallback to moving average).
- **Outputs**:
  - Forecasted weekly demand (8 weeks).
  - Average vs. peak staffing needs per location.
- **Capacity Summary**: Average demand ~X, peak demand ~Y, requiring ~Z technicians on average and ~P at peak.

---

## 🧮 Scenario Analysis
Three demand scenarios modeled:
- **−10% demand** → Reduced staffing needs, still requiring baseline coverage at high-volume sites.
- **Baseline** → Sufficient with Z average technicians, P peak.
- **+10% demand** → Significant staffing pressure; surge pools recommended.

---

## 📊 Visualizations
- Capacity Summary Table.
- Peak Required Technicians (Bar Chart).
- Weekly Demand & Forecast (Line Chart).
- Scenario Planning (Line Chart).

All visuals are available in `visuals/` and embedded in the professional report.

---

## 📌 Results
- Demand forecasts indicate steady growth across all sites.  
- High-demand locations (San Jose, Palo Alto) drive workforce needs.  
- Buffering (+10%) ensures resilience against demand spikes.  
- Scenario analysis highlights importance of flexible staffing pools.  

📄 **Full Professional Report**: [Workforce_Capacity_Planning_Report_Professional.pdf](https://github.com/Sohitha-01/Workforce-Capacity-Planning/blob/be60841bb3d6f6ef373e03705ec323d2317388a2/outputs/Workforce_Capacity_Planning_Report_Professional.pdf)

---

## 📜 License
This project is open-source under the MIT License.
