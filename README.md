# Retail Sales Analytics — Microsoft Fabric, dbt & Power BI

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)
![Microsoft Fabric](https://img.shields.io/badge/Microsoft-Fabric-blue)
![dbt](https://img.shields.io/badge/dbt-Data%20Transformation-orange)
![SQL](https://img.shields.io/badge/SQL-TSQL-blue)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?logo=git)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github)

## Project Overview

This project demonstrates an end-to-end modern analytics engineering and business intelligence solution using:

- Microsoft Fabric
- dbt
- SQL
- Power BI
- DAX
- Git & GitHub

The project takes retail sales data through a structured transformation pipeline, develops reusable analytics models using dbt, creates a Star Schema, and delivers an executive Power BI dashboard.

The objective was to simulate a real-world analytics project from raw data through transformation, modelling, testing, documentation, and business reporting.

---

# Business Objectives

The solution was designed to answer key retail business questions:

- What are total sales?
- How many orders were placed?
- How many customers purchased?
- How many products are available?
- Which products generate the most sales?
- Which product categories perform best?
- How are sales trending over time?
- How do current sales compare with previous periods?
- What is the cumulative sales performance throughout the year?

---

# Technology Stack

| Technology | Purpose |
|---|---|
| Microsoft Fabric | Data platform and warehouse |
| dbt | Data transformation and modelling |
| SQL / T-SQL | Data transformation and analysis |
| Power BI | Business intelligence and dashboard |
| DAX | Measures and analytical calculations |
| Git | Version control |
| GitHub | Source control and portfolio |

---

# Architecture

The project follows a layered analytics engineering approach:

```text
Raw Retail Data
       |
       v
Microsoft Fabric
       |
       v
dbt Staging Models
       |
       v
dbt Intermediate Models
       |
       v
dbt Mart Models
       |
       v
Star Schema
       |
       v
Power BI Semantic Model
       |
       v
Executive Retail Sales Dashboard