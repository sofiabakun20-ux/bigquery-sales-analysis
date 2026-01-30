-- Business Question 1: What is the total revenue?
SELECT
  SUM(sale_price) AS total_revenue
FROM bigquery-public-data.thelook_ecommerce.order_items;


-- Business Question 2: Top 5 products by revenue
SELECT
  product_name,
  SUM(sale_price) AS revenue
FROM bigquery-public-data.thelook_ecommerce.order_items
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 5;


-- Business Question 3: Monthly revenue trend
SELECT
  FORMAT_DATE('%Y-%m', created_at) AS month,
  SUM(sale_price) AS revenue
FROM bigquery-public-data.thelook_ecommerce.order_items
GROUP BY month
ORDER BY month ASC;
