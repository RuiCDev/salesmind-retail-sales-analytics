# Retail Sales & Profitability Analytics Dashboard 📊

🔗 **GitHub Repository:** [https://github.com/RuiCDev/salesmind-retail-sales-analytics](https://github.com/RuiCDev/salesmind-retail-sales-analytics)

## 📌 Project Overview
This project delivers an end-to-end Business Intelligence solution, transforming raw retail data into actionable strategic insights. Using a **MySQL** backend and a **Power BI** frontend, I developed a comprehensive dashboard to monitor global sales performance, profitability, and product efficiency.

---

## 🏗️ Project Architecture
The project follows a classic BI pipeline:

* 📥 **Raw Data**: Sourced from Kaggle.
* 🧹 **Data Cleaning**: Performed in MySQL.
* 🏗️ **Modeling**: Star Schema implementation.
* 📊 **Visualization**: Power BI Interactive Dashboard.
* 💡 **Outcome**: Strategic Business Insights.

---

## 🛠️ Tech Stack
* **Database:** MySQL (Data cleaning, Schema design)
* **BI Tool:** Power BI Desktop
* **Analytics:** DAX (Data Analysis Expressions)
* **Modeling:** Star Schema (Dimensional Modeling)

## 📂 Dataset Source
The raw data used in this project was sourced from Kaggle:
* **Dataset:** [SalesMind 2026: AI Commerce Dataset](https://www.kaggle.com/datasets/algozee/dayaset-2020)

---

## 🧩 Data Preparation (SQL)
Data cleaning and transformation were performed in MySQL to ensure data integrity. Key steps included:
* **Data Type Standardization:** Formatting dates and numeric fields.
* **Redundancy Removal:** Elimination of duplicates using aggregation logic.
* **Schema Design:** Creation of clean dimension tables.
* **Optimization:** Final dataset structured into a Star Schema optimized for high-performance BI reporting.

---

## 🏗️ Data Architecture & Modeling
To ensure a scalable and performant solution, I implemented a **Star Schema**. 

![Data Model](screenshots/salesmind_data_model.png)
*Figure 1: Star Schema showing the central Fact Table connected to Dimensions (Calendar, Products, Stores, and Customer Segments).*

---

## 📈 Strategic Insights

### 1. Strong Profitability Performance
The business generated **$61.21M** in revenue with **$16.34M** profit, resulting in a solid **26.7%** profit margin.

### 2. Balanced Product Portfolio
Revenue is evenly distributed across key categories (*Electric Accessories, AI Gadgets, Smart Wearables*), reducing dependency risk.

### 3. Seasonal Revenue Patterns
Sales peak in **January and December**, highlighting strong holiday-driven demand.

---

## 💡 Business Impact
This analysis enables stakeholders to:
* **Optimize Inventory:** Identify high-performing product categories.
* **Marketing ROI:** Leverage seasonal demand patterns for better campaign timing.
* **Margin Protection:** Monitor profitability in real-time to prevent margin erosion.
* **Enable faster and more accurate business decisions.**

---

## 📸 Dashboard Preview

### Executive Overview Dashboard
![Executive Overview Dashboard](screenshots/salesmind_dashboard.png)

### Regional Performance Analysis
![Regional Performance Analysis](screenshots/salesmind_dashboard_europe.png)

---
## ⚖️ License & Attribution
This project uses the [SalesMind 2026 Dataset](https://www.kaggle.com/datasets/algozee/dayaset-2020).