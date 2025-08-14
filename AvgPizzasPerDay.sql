-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(quant), 0) AS avgcount
FROM
    (SELECT 
        orders.order_date,
            ROUND(SUM(order_details.quantity), 2) AS quant
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY orders.order_date
    ORDER BY quant DESC) AS order_quantity;

