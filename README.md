<img width="1313" height="736" alt="Dashboard" src="https://github.com/user-attachments/assets/f1814038-df86-47ed-9c17-5915d0d3a384" />
# 🍕 Napoletana Bites – Pizza Sales Analysis (SQL + Power BI)

Welcome to **Napoletana Bites**, a complete data analysis project using **SQL** and **Power BI** focused on the sales performance of a fictional pizza brand. This project delivers **business-level insights**, **interactive dashboards**, and **clean SQL logic**, making it a portfolio-ready showcase for aspiring Data Analysts and BI Developers.

---

### 🟡 Power BI Report Preview 




---
## 🔍 Project Objectives

- Analyze pizza sales across various dimensions (category, size, day, week, hour)
- Derive meaningful KPIs and trends to support decision-making
- Practice SQL query writing and DAX logic building
- Create a professional Power BI dashboard for data storytelling

---

## 📁 Dataset Overview

The project is based on a fictional pizza store's order history:

| Column Name         | Description                           |
|---------------------|---------------------------------------|
| `order_id`          | Unique order identifier               |
| `order_date`        | Date of order                         |
| `order_time`        | Time of order                         |
| `pizza_name`        | Name of the pizza sold                |
| `pizza_category`    | Category: Classic, Veggie, Chicken... |
| `pizza_size`        | Size of the pizza (Small → XXL)       |
| `quantity`          | Number of pizzas ordered              |
| `unit_price`        | Price per pizza                       |
| `total_price`       | Total price for that row              |

---

## ✅ KPIs Created

1. **Total Revenue:** ₹817.86K  
2. **Average Order Value:** ₹16.82  
3. **Total Pizzas Sold:** 49,574  
4. **Total Orders:** 21,350  
5. **Average Pizzas per Order:** 1.02

---

## 📈 Visuals & Insights

| Visual                           | Description |
|----------------------------------|-------------|
| ⏰ **Hourly Revenue Trend**       | Shows peak hours for revenue |
| 📅 **Weekly Sales Trend (by Day)**| Analyzes which weekdays perform best |
| 📆 **Weekly Sales Trend (by Week No.)** | Tracks total sales across 52 weeks |
| 🍕 **Sales by Pizza Category**   | Revenue share by category |
| 🍕 **Sales by Pizza Size**       | Revenue share by pizza size |
| 🔝 **Top 5 Best Sellers**        | By revenue, quantity, and total orders |
| 🔻 **Bottom 5 Performers**       | By same metrics as above |

---

## 💻 Tools Used

- **SQL**: PostgreSQL for raw querying and business logic  
- **Power BI**: For building the interactive report and DAX-based insights  
- **Excel**: For preprocessing and testing  
- **DAX**: Used to calculate advanced KPIs and build dynamic visuals

---

## 📊 Sample SQL Logic

<img width="1149" height="985" alt="image" src="https://github.com/user-attachments/assets/8777e071-84c6-44f0-8f70-34e41b194f76" />

```sql
-- Total Revenue
SELECT ROUND(SUM(total_price)::NUMERIC, 2) AS total_revenue
FROM pizza_sales;

-- Hourly Order Trend
SELECT EXTRACT(HOUR FROM order_time) AS order_hour,
       COUNT(order_id) AS total_orders
FROM pizza_sales
GROUP BY order_hour
ORDER BY order_hour;
```

---

## 🧠 Key Learnings

- Learned how to convert raw order-level data into business insights
- Strengthened SQL skills with aggregate, group by, and time functions
- Practiced Power BI design and dashboard storytelling
- Developed confidence with KPIs, slicers, DAX, and filters

---

## 📌 Future Improvements

- Add Customer Data to analyze loyalty & retention  
- Build forecasting visual with Power BI’s inbuilt AI features  
- Export report to PDF / SharePoint / email automation  

---

## 📷 Project Screenshots

 


### 🟢 SQL Query Preview  
`SQL_Analysis.sql` file included for all queries.

---

## 📬 Connect With Me

📧 pushpkarroy880@gmail.com  
🔗 [LinkedIn – Pushpkar Roy](https://www.linkedin.com/in/pushpkar-roy/)  
💻 [GitHub – PushpkarRoy](https://github.com/PushpkarRoy)
