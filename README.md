# 📊 SQL Portfolio Project — Exploratory Data Analysis (EDA) & Advanced Analytics

> A comprehensive, end-to-end SQL project using **MySQL** covering 11 real-world analytical techniques — from database exploration to advanced business intelligence.

---

## 🗺️ Project Overview

This project demonstrates practical SQL skills through two major analytical tracks:

| Track | Focus |
|---|---|
| 🔵 **Exploratory Data Analysis (EDA)** | Understand the data structure, dimensions, dates, magnitudes, and rankings |
| 🟢 **Advanced Analytics** | Derive business insights through cumulative trends, segmentation, and performance metrics |

---

## 📁 Project Structure

```
SQL-Portfolio-Project/
│
├── exploratory_data_analysis/
│   ├── 01_database_exploration.sql
│   ├── 02_dimensions_exploration.sql
│   ├── 03_date_exploration.sql
│   ├── 04_big_numbers.sql
│   ├── 05_magnitude.sql
│   └── 06_ranking.sql
│
├── advanced_analytics/
│   ├── 07_change_over_time_trends.sql
│   ├── 08_cumulative_analysis.sql
│   ├── 09_performance_analysis.sql
│   ├── 10_part_to_whole.sql
│   └── 11_data_segmentation.sql
│
└── README.md
```

---

## 🔵 Exploratory Data Analysis (EDA)

### 1. 🗄️ Database Exploration
- Inspect all tables, schemas, and relationships
- Understand primary/foreign keys, row counts, and column definitions
- **Key SQL:** `SELECT`, `INFORMATION_SCHEMA`, `SHOW TABLES`

### 2. 🔲 Dimensions Exploration
- Explore categorical columns: unique values, nulls, and cardinality
- Profile text and dimension columns to understand data quality
- **Key SQL:** `SELECT DISTINCT`, `COUNT`, `GROUP BY`

### 3. 📅 Date Exploration
- Identify date ranges, earliest/latest records, and time spans
- Check for missing date gaps and date format consistency
- **Key SQL:** `MIN()`, `MAX()`, `DATEDIFF()`, `DATE_FORMAT()`

### 4. 🔢 Big Numbers (Key Metrics)
- Surface high-level KPIs: total revenue, total customers, total orders
- Quick sanity check on business scale
- **Key SQL:** `SUM()`, `COUNT()`, `AVG()`, `MAX()`

### 5. 📏 Magnitude
- Measure volumes across dimensions (e.g., revenue by region, orders by category)
- Understand which dimensions drive the most value
- **Key SQL:** `SELECT`, `GROUP BY`, `ORDER BY`, `SUM()`

### 6. 🏆 Ranking (Top N / Bottom N)
- Rank products, customers, or regions by performance
- Identify best and worst performers
- **Key SQL:** `RANK()`, `ROW_NUMBER()`, `DENSE_RANK()`, `LIMIT`

---

## 🟢 Advanced Analytics

### 7. 📈 Change-Over-Time Trends
- Analyze how metrics evolve across months, quarters, or years
- Identify growth, decline, and seasonality patterns
- **Key SQL:** `DATE_FORMAT()`, `GROUP BY`, time-series aggregation

### 8. 📊 Cumulative Analysis
- Build running totals and moving averages
- Understand cumulative growth trajectories
- **Key SQL:** `SUM() OVER()`, `AVG() OVER()`, window functions

### 9. ⚡ Performance Analysis
- Compare actual vs. target or year-over-year performance
- Benchmark individual entities against averages
- **Key SQL:** `LAG()`, `LEAD()`, `CASE WHEN`, CTEs

### 10. 🥧 Part-to-Whole (Proportional Analysis)
- Calculate percentage contribution of each segment to the total
- Understand category share of revenue or volume
- **Key SQL:** `SUM() OVER()`, `ROUND()`, `PARTITION BY`

### 11. 🔵 Data Segmentation
- Segment customers or products into meaningful groups (e.g., High/Mid/Low)
- Enable targeted business decisions
- **Key SQL:** `CASE WHEN`, `GROUP BY`, `COUNT()`, `SUM()`

---

## 🛠️ Tools & Technologies

- **Database:** MySQL
- **SQL Concepts:** Aggregate functions, Window functions, CTEs, Subqueries, CASE expressions
- **Techniques:** EDA, Trend Analysis, Cohort Logic, Segmentation, KPI Reporting

---

## 💡 Key Learnings

- How to systematically explore an unknown dataset using SQL
- Building analytical frameworks from scratch without BI tools
- Writing clean, readable, and reusable SQL queries
- Deriving business insights directly from raw relational data

---

## 🚀 How to Run

1. Clone this repository:
   ```bash
   git clone https://github.com/Logeshanalytics/Exploratory-Data-Analysis-EDA-Advance-Data-Analytics.git
   ```
2. Open **MySQL Workbench** or any MySQL client
3. Import your dataset/database
4. Run the SQL scripts in numbered order (01 → 11)

---

## 👤 Author

**Logesh Purushothaman**  
📊 Aspiring Data Analyst | SQL | Power BI | Python  
🔗 [LinkedIn](https://www.linkedin.com/in/logesh-purushothaman) | [GitHub](https://github.com/Logeshanalytics)

---

## ⭐ If you found this useful, give the repo a star!

> *"Data is the new oil — SQL is the refinery."*
