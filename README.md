# E-Commerce Sales Analysis (SQL + Power BI)

## 📌 Project Overview
This project analyzes 2025 e-commerce sales data to evaluate overall revenue performance across product categories, cities, and time. The objective was to assess return behavior, identify consumer trends, and uncover growth opportunities and operational inefficiencies.

---

## 📊 Dataset Description
The dataset consists of:
- 1,000 total orders (2025)
- 120 unique customers
- 60+ products across multiple categories
- 150 recorded returns
- 12 active cities

### Tables Used:
- `orders_2025`
- `customers_2025`
- `products_2025_v2`
- `returns_2025`

### Data Cleaning & Processing:
- Standardized inconsistent city names using `CASE` and `LOWER()`
- Corrected numeric formatting using `CAST()` and `REPLACE()`
- Calculated revenue after discount adjustments
- Computed return rate using decimal division to avoid integer truncation
- Created reporting tables and views for dashboard integration

---

## 🛠 Tools & Technologies
- **SQL (SQLite)** – Data cleaning, transformation, aggregations
- **DB Browser for SQLite** – Database management
- **Power BI** – Dashboard design and visualization
- CSV export for reporting layer

### Key SQL Concepts Used:
- `JOIN`
- `GROUP BY`
- `CREATE TABLE` & `CREATE VIEW`
- `SUM`, `COUNT`, `AVG`
- Arithmetic calculations for revenue and return rate

---

## 📈 Key Metrics Built

### Executive KPIs:
- Total Net Revenue
- Total Products
- Active Cities
- Average Return Rate (%)

### Performance Analysis:
- Revenue by Category
- Revenue by City
- Revenue by Product
- Monthly Revenue Trend

---

## 🔍 Key Insights

1. Metro cities dominate revenue contribution, with Delhi NCR contributing approximately 19% of total revenue.
2. Fashion and Accessories together account for nearly 38% of total revenue, showing strong but balanced category performance.
3. The overall return rate of ~15% indicates room for operational improvement, with Mumbai and Hyderabad exceeding 20%.
4. Revenue trends show seasonal volatility with a dip after September followed by recovery.
5. Revenue distribution across products is relatively balanced, reducing over-dependence risk on a single SKU.

---

## 💡 Business Recommendations

1. Expand into Tier-2 and semi-urban markets to reduce geographic dependency.
2. Implement return reduction strategies through quality control and improved logistics.
3. Use seasonal trend analysis for better inventory and demand planning.
4. Strengthen high-performing categories through targeted marketing and bundling strategies.
5. Conduct region-specific diagnostics in high-return cities.

---

## 📚 What I Learned

- Preserving raw data integrity by creating analytical views instead of modifying source tables.
- Importance of decimal forcing to avoid integer division errors.
- Data cleaning before analysis using `CASE`, `CAST`, `REPLACE`, and `LOWER()`.
- Correct JOIN logic to ensure accurate aggregations.
- Translating data into actionable business insights.

---

## 📷 Dashboard Preview
(Dashboard screenshot attached below)
