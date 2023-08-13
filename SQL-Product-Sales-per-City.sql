SELECT ci.city_name, pr.product_name, ROUND(SUM(ii.line_total_price), 2) AS total_amount
FROM city ci, customer cu, invoice i, invoice_item ii, product pr 
WHERE ci.id = cu.city_id AND cu.id = i.customer_id AND i.id = ii.invoice_id AND ii.product_id = pr.id 
GROUP BY ci.city_name, pr.product_name 
ORDER BY total_amount DESC, ci.city_name, pr.product_name;