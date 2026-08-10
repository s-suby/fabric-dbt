# Retail Sales Analytics with Microsoft Fabric, dbt & Power BI

![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi)
![Microsoft Fabric](https://img.shields.io/badge/Microsoft-Fabric-blue)
![dbt](https://img.shields.io/badge/dbt-Analytics%20Engineering-orange)
![SQL](https://img.shields.io/badge/SQL-T--SQL-blue)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?logo=git)
![GitHub](https://img.shields.io/badge/GitHub-Portfolio-181717?logo=github)

## 📌 Project Overview

This project demonstrates an end-to-end **Analytics Engineering and Business Intelligence solution** built using **Microsoft Fabric, dbt, SQL, Power BI, DAX, Git and GitHub**.

Raw retail sales data is transformed using dbt into a clean, business-ready **Star Schema**, which is then used to build an interactive Power BI executive dashboard.

The project demonstrates the complete workflow from:

**Raw Data → Transformation → Data Modelling → Testing → Power BI → Business Insights**

---

## 🎯 Business Objectives

The solution is designed to help business users answer questions such as:

- What are total sales and order volumes?
- How are sales performing compared with the previous year?
- Which products generate the highest revenue?
- Which categories and subcategories perform best?
- How are sales trending over time?
- What is the cumulative sales performance?
- How are key KPIs such as Average Order Value performing?

---

# 🏗️ Solution Architecture

```text
                    RAW RETAIL DATA
                           │
                           ▼
                  ┌─────────────────┐
                  │ Microsoft Fabric│
                  │  Data Platform  │
                  └────────┬────────┘
                           │
                           ▼
                      ┌─────────┐
                      │   dbt   │
                      └────┬────┘
                           │
             ┌─────────────┴─────────────┐
             ▼                           ▼
      STAGING MODELS             INTERMEDIATE MODELS
             │                           │
             └─────────────┬─────────────┘
                           ▼
                     MART MODELS
                           │
                           ▼
                      STAR SCHEMA
                           │
              ┌────────────┴────────────┐
              ▼                         ▼
        DIMENSION TABLES           FACT SALES
              │                         │
              └────────────┬────────────┘
                           ▼
                       POWER BI
                           │
                           ▼
                EXECUTIVE DASHBOARD