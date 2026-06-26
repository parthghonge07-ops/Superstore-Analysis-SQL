# 🛒 Superstore Sales Analysis

##  Objective
Analyzed 10,000+ row retail sales dataset to
identify sales trends, profitability patterns
and business insights using PostgreSQL.

##  Tools Used
- PostgreSQL 17
- pgAdmin 4

##  Dataset
- Source: Kaggle — Sample Superstore Dataset
- Rows: 10,194
- Columns: 21

##  Repository Structure
- `Superstore Analysis SQL.sql` — all 15 queries
- `samplesuperstore.csv` — raw dataset
- `Results/` — CSV output of all 15 queries

---

##  Business Questions Answered

### Basic Analysis
1. Which region has highest sales?
2. Which category is most profitable?
3. Which sub-category has highest sales?
4. Monthly sales trend
5. Top 10 customers by revenue
6. Most valuable customer segment
7. Top 5 cities by profit
8. Top 5 cities with highest losses
9. High sales but negative profit products
10. Discount impact on profit

### Advanced Analysis
11. Rank regions by profit using RANK()
12. Running total of monthly sales
13. Year over year sales comparison
14. Average order value by segment
15. Ship mode preference by region

---

##  Key Findings

### Q1: Regional Sales
[View Results](Results/Q1_regional_sales)

### Q2: Category Profitability
[View Results](Results/Q2_category_profit)

### Q5: Top 10 Customers
[View Results](Results/Q5_top_customers)

### Q6: Customer Segments
[View Results](Results/Q6_customer_segments)

### Q7: Top 5 Cities by Profit
[View Results](Results/Q7_top_cities_profit)

### Q8: Top 5 Loss Making Cities
 [View Results](Results/Q8_loss_cities)

### Q10: Discount Impact on Profit
[View Results](Results/Q10_discount_impact)

### Q11: Region Profit Ranking
[View Results](Results/Q11_region_rank)

### Q13: Year Over Year Sales
[View Results](Results/Q13_yoy_sales)

### Q14: Average Order Value
[View Results](Results/Q14_avg_order_values)

### Q15: Ship Mode Preference
[View Results](Results/Q15_ship_mode)

---
## Business Recommendations
1. Focus on West region — highest profit $110,798
2. Prioritize Technology — most profitable category
3. Eliminate discounts above 30% — causes losses
4. Investigate Philadelphia — highest loss $13,837
5. Retain Sean Miller — top customer $25,043

---

##  SQL Concepts Used
- GROUP BY, ORDER BY, HAVING
- Subqueries and CTEs
- Window Functions — RANK(), LAG()
- PARTITION BY
- Date functions — EXTRACT()
- Aggregate functions — SUM, AVG, COUNT
- ROUND, CAST
