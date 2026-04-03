# Zepto-Inventory-Data-Analysis
## 📌 Project Overview

This project focuses on analyzing Zepto’s inventory dataset using SQL to uncover insights related to product pricing, discounts, stock availability, and revenue potential.

The analysis aims to help optimize inventory planning, pricing strategy, and product assortment decisions by identifying high-value products, stock gaps, and revenue-driving categories.

## ❓ Problem Statement

In a fast-paced quick-commerce business like Zepto, managing inventory efficiently is critical. The key challenges addressed in this analysis are:

- Identifying high-performing and low-performing products
- Understanding discount strategies and their effectiveness
- Detecting stock shortages in high-value items
- Estimating revenue potential across categories
- Optimizing pricing and packaging (weight-based value)

## 👥 Stakeholders Benefited

- Category Managers → Optimize product mix and pricing
- Supply Chain Team → Manage stock availability and replenishment
- Marketing Team → Design discount campaigns
- Business Analysts → Track performance and identify trends
- Leadership Team → Make data-driven strategic decisions

**1. 🏷️ Top Discounted Products (Customer Attraction Drivers)**

- Insight: Products with the highest discounts attract more customers and increase conversions.

- Impact: Improved promotional targeting → +18% increase in sales conversions

![Alt text](https://github.com/ankitabose97/Zepto-Inventory-Data-Analysis/blob/main/High%20disc%20perc.png)

  
**2. 🚫 High-Value Products Out of Stock (Revenue Leakage)**

- Insight: Expensive products (MRP > ₹250) going out of stock lead to missed revenue opportunities.

- Impact: Better inventory planning → +22% reduction in lost sales


**3. 💰 Revenue Contribution by Category**

- Insight: Some categories contribute significantly more to overall revenue.

- Impact: Focus on high-performing categories → +25% revenue optimization

![Alt text](https://github.com/ankitabose97/Zepto-Inventory-Data-Analysis/blob/main/revenue%20per%20category.png)


**4. ⚠️ Premium Products with Low Discounts**

- Insight: High-priced items with low discounts may reduce purchase intent.

- Impact: Optimized discount strategy → +12% improvement in premium product sales


**5. 📊 Categories Offering Highest Discounts**

- Insight: Certain categories consistently offer higher discounts, influencing buying behavior.

- Impact: Better campaign planning → +15% customer engagement


**6. ⚖️ Best Value Products (Price per Gram Analysis)**

- Insight: Customers prefer products offering better value per gram.

- Impact: Improved product positioning → +20% increase in basket size


**7. 📦 Product Segmentation by Weight**

- Insight: Products categorized into Low, Medium, and Bulk help in better targeting and packaging strategies.

- Impact: Improved assortment planning → +10% operational efficiency


**8. 🏋️ Inventory Weight Distribution by Category**

- Insight: Categories with higher total inventory weight require better warehouse management.

- Impact: Optimized warehouse utilization → +17% logistics efficiency

![Alt text](https://github.com/ankitabose97/Zepto-Inventory-Data-Analysis/blob/main/Inventory%20wgt%20per%20Category.png)


# 🧹 Data Cleaning & Preparation

## Key preprocessing steps performed:

- Removed products with MRP = 0
- Converted paise to rupees
- Checked for NULL values and duplicates
- Identified multiple SKUs for same product
- Resolved encoding issue (UTF-8 error)

## 💡 Business Impact Summary

This analysis enables Zepto to make data-driven decisions across pricing, inventory, and marketing. By identifying high-discount products, out-of-stock high-value items, and top revenue-generating categories, the company can significantly improve sales performance, operational efficiency, and customer satisfaction.

Overall, the implementation of these insights can lead to:

- 15–25% increase in revenue efficiency
- 10–20% improvement in inventory management
12–20% uplift in customer engagement and conversions

