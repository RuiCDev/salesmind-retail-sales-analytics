# Retail Sales & Profitability Analytics Dashboard 📊

## 📌 Project Overview
This project delivers an end-to-end Business Intelligence solution, transforming raw retail data into actionable strategic insights. Using a **MySQL** backend and a **Power BI** frontend, I developed a comprehensive dashboard to monitor global sales performance, profitability, and product efficiency.

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
Data cleaning and transformation were performed in MySQL to ensure data integrity and reporting accuracy. Key steps included:
* **Data Type Standardization:** Formatting dates and numeric fields for time-intelligence calculations.
* **Redundancy Removal:** Elimination of duplicates using aggregation logic.
* **Schema Design:** Creation of clean dimension tables and implementation of foreign key relationships.
* **Optimization:** Final dataset structured into a Star Schema optimized for high-performance BI reporting.

---

## 🏗️ Data Architecture & Modeling
To ensure a scalable and performant solution, I implemented a **Star Schema**. This structure optimizes data retrieval and allows for complex DAX calculations across multiple dimensions.

![Data Model](screenshots/salesmind_data_model.png)
*Figure 1: Star Schema showing the central Fact Table (sales_clean) connected to Dimensions (Calendar, Products, Stores, and Customer Segments).*

---

## 📈 Strategic Insights

### 1. Strong Profitability Performance
The business generated **$61.21M** in revenue with **$16.34M** profit, resulting in a solid **26.7%** profit margin — indicating a highly sustainable and scalable operation.

### 2. Balanced Product Portfolio
Revenue is evenly distributed across key categories (*Electric Accessories, AI Gadgets, Smart Wearables*), reducing dependency risk and ensuring portfolio stability.

### 3. Seasonal Revenue Patterns
Sales peak in **January and December**, highlighting strong holiday-driven demand and post-season sales effects. This suggests opportunities for targeted campaigns during high-impact periods.

---

## 💡 Business Impact
This analysis enables stakeholders to:
* **Optimize Inventory:** Identify high-performing product categories to improve stock allocation.
* **Marketing ROI:** Leverage seasonal demand patterns to improve marketing timing and campaign effectiveness.
* **Margin Protection:** Monitor profitability in real-time to prevent margin erosion and refine pricing strategies.
* **Agile Decisions:** Support data-driven decision-making across different regions and product lines.

---

## 🚀 Key Visuals & Features
* **Executive KPIs:** Real-time tracking of Revenue, Profit, Margin, and MoM Growth.
* **Product Efficiency Matrix:** A Scatter Plot analyzing the relationship between sales volume and margin efficiency.
* **Dynamic Filtering:** Full interactivity by Region (Europe vs. North America).

---

## 📸 Dashboard Preview

### Executive Overview Dashboard
The main view provides a high-level executive summary of the entire operation, highlighting total revenue, profitability, and growth trends.
![Executive Overview Dashboard](screenshots/salesmind_dashboard.png)

### Regional Performance Analysis
Through interactive filtering, the dashboard allows for deep-dives into specific markets. Here we can observe the specific performance of the European region.
![Regional Performance Analysis](screenshots/salesmind_dashboard_europe.png)


---
## ⚖️ License & Attribution
This project uses the [SalesMind 2026 Dataset](https://www.kaggle.com/datasets/algozee/dayaset-2020) provided by AlgoZee on Kaggle. 
The data is licensed under **CC BY-NC-SA 4.0**. 
*This repository is for educational and portfolio purposes only.*