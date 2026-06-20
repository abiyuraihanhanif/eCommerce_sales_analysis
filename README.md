# E-Commerce Sales Performance Analysis

## 📌 Project Overview
This project analyzes e-commerce sales performance from 2022 to 2024 using Python, PostgreSQL, SQL, and Metabase. The objective is to identify sales trends, category performance, regional contribution, product profitability, and revenue distribution patterns to support data-driven business decisions.

The project follows an end-to-end analytics workflow, including:
- Data Quality Assessment
- Exploratory Data Analysis (EDA)
- PostgreSQL Data Storage
- SQL-Based Business Analysis
- Interactive Dashboard Development with Metabase

---

## 🎯 Business Problem
The business aims to answer the following questions:
- How has revenue performed over time?
- Which product categories contribute the most revenue and profit?
- Which regions drive business performance?
- Which products generate the highest revenue and profit?
- Is revenue concentrated in a small number of products?

---

## 📂 Dataset Information

**Dataset** Ecommerce Sales Data
**Source** Kaggle
**Period** 2022 - 2024
**Total Records:** 3,500+ Transactions

### Dataset Structure

| Column | Description |
|----------|------------|
| order_date | Order transaction date |
| product_name | Product name |
| category | Product category |
| region | Sales region |
| quantity | Quantity sold |
| sales | Revenue generated |
| profit | Profit generated |

---

## 🛠️ Technology Stack
| Tool | Purpose |
|--------|---------|
| Python | Data Cleaning & Analysis |
| Pandas | Data Manipulation |
| PostgreSQL | Data Storage |
| SQL | Business Analysis |
| Metabase | Dashboard Visualization |
| GitHub | Version Control & Documentation |

---

## 🔄 Project Workflow
```text
Raw Dataset
    ↓
Data Quality Check
    ↓
Exploratory Data Analysis
    ↓
PostgreSQL Database
    ↓
SQL Business Analysis
    ↓
Metabase Dashboard
    ↓
Business Insights & Recommendations
```

---

## 📊 Key Performance Indicators (KPI)
| KPI | Value |
|--------|--------:|
| Total Revenue | 10.67M |
| Total Profit | 1.84M |
| Profit Margin | 17.29% |
| Total Quantity Sold | 17,261 |

---

## 📈 Key Findings

### 1. Revenue Performance
- Total revenue reached **10.67 million** during the observed period.
- Monthly revenue fluctuated between approximately **180K and 390**.
- Revenue remained relatively stable with no strong long-term growth trend.

### 2. Category Performance
- Electronics contributed approximately **50% of total revenue**, making it the most important category.
- Accessories became the second-largest contributor.
- Office products accounted for a significantly smaller share of revenue.

### 3. Profitability Analysis
- Total profit reached approximately **1.84 million**.
- Profit margin remained consistent across categories at around **17%**.
- Business profitability appears to be driven primarily by sales volume rather than margin differences.

### 4. Regional Analysis
- West region generated the highest revenue and profit.
- Revenue distribution across regions was relatively balanced.
- No region showed significant underperformance.

### 5. Product Analysis
- Camera, Monitor, Printer, and Mouse ranked among the highest-performing products.
- Revenue contribution was relatively distributed across products.
- The Business does noe appear heavily dependent on a single product.

### 6. Pareto Analysis
- Revenue distributin across products was relatively balanced.
- The classic 80/20 Pareto pattern was not strongly observed in this dataset.
- Business performance is suppored by multiple products rather than a small group of dominant products.

---

## 💡 Business Recommendations
### Recomendation 1
Focus marketing efforts on high-performing products such as Camera, Monitor, and Printer to maximize revenue growth.

### Recomendation 2
Investigate revenue declines during low-performing months, particularly February 2024, to identify operational or demand-related issues.

### Recommendation 3
Continue investing in the Electronics category due to its dominant contribution to overall business performance.

### Recommendation 4
Maintain product diversification strategies since revenue is distributed across multiple products, reducing dependency risk.

---

## 🗄️ SQL Analysis Examples
### Monthly Revenue Trend

```sql
SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY 1
ORDER BY 1;
```

### Revenue by Category

```sql
SELECT
    category,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY category
ORDER BY revenue DESC;
```

### Top Products by Revenue

```sql
SELECT
    product_name,
    SUM(sales) AS revenue
FROM ecommerce_sales
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;
```

---

## 📊 Dashboard Preview

### E-Commerce Sales Performance Dashboard

![Dashboard Preview](dashboard/metabase_dashboard.png)

The dashboard includes:

- KPI Overview
- Monthly Revenue Trend
- Monthly Profit Trend
- Revenue by Category
- Profit by Category
- Revenue by Region
- Profit by Region
- Top Products Analysis
- Pareto Analysis

---

## 📁 Repository Structure

```text
ecommerce-sales-analysis/
│
├── data/
│   ├── ecommerce_data_clean/
│   └── ecommerce_sales_data/
│
├── notebooks/
│   ├── 00_isi_tabel.ipynb
│   ├── 01_data_quality_check.ipynb
│   ├── 02_data_cleaning.ipynb
│   └── 03_load_to_postgreSQL.ipynb
│
├── sql/
│   ├── create_table.sql
│   └── business_queries.sql
│
├── dashboard/
│   └── E-Commerce Sales Performance Dashboard
│
├── images/
│   ├── Dashboard 1.png
│   └── Dashboard 2.png
│
└── README.md
```

---
## 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Query Development
- PostgreSQL Database Management
- Window Functions
- Business Intelligence Dashboarding
- Data Visualization
- Business Insight Generation

---
## 👤 Author

**Abiyu Raihan**

Aspiring Data Analyst passionate about transforming raw data into actionable business insights through analytics, SQL, and dashboard development.
