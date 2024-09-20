SELECT 
  o.order_id AS OrderID,
  o.client_id AS ClientID,
  c.client_name AS ClientName,
  o.order_date AS OrderDate,
  i.item_id AS ProductID,
  p.item_name AS ProductName,
  i.quantity AS Quantity,
  i.unit_price AS UnitPrice,
  (i.quantity * i.unit_price) AS ItemTotal,
  o.total_value AS OrderTotal
FROM tab_orders o
  JOIN tab_orders_item i ON o.order_id = i.order_id
  JOIN tab_item p ON i.item_id = p.item_id
  JOIN tab_clients c ON c.client_id = o.client_id
WHERE 1=1
	/*FILTRO_ADICIONAL*/
ORDER BY 
  o.order_date, 
  o.order_id;
