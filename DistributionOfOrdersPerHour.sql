-- Determine the distribution of orders by hour of the day.

select hour(orders.order_time) from orders;

select hour(order_time) as hour_time, sum(order_id) as order_quantity
from orders
group by hour_time;