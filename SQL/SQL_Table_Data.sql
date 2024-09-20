INSERT INTO tab_clients(client_name, client_address, phone, email)
VALUES 
('Maria Cichota', '123 Maple Street', '+55 (54) 9 9170-9375', 'maria.cichota@minervafoods.com'),
('Stephanie Scheler', '456 Oak Avenue', '+55 (11) 9 6193-9803', 'stephanie.scheler@byintera.com'),
('Vanessa Castro', '789 Pine Road', '+55 (11) 9 9999-9999', 'vanessa.castro@minervafoods.com'),
('Arnaldo Marques', '321 Birch Lane', '+55 (11) 9 9999-9999', 'arnaldo.marques@minervafoods.com'),
('Charlie Davis', '654 Cedar Boulevard', '+55 (11) 9 9999-9999', 'charlie.davis@example.com');

INSERT INTO tab_item(item_name, item_description, price)
VALUES 
('Laptop', 'High performance laptop', 1500.00),
('Smartphone', 'Latest model smartphone', 800.00),
('Headphones', 'Noise-cancelling headphones', 200.00);

INSERT tab_orders(client_id, order_date, total_value)
VALUES 
(1, GETDATE(), 2300.00), 
(1, GETDATE(), 1000.00); 

INSERT INTO tab_orders_item(order_id, item_id, quantity, unit_price)
VALUES 
(1, 1, 1, 1500.00),  
(1, 2, 1, 800.00);

INSERT INTO tab_orders_item (order_id, item_id, quantity, unit_price)
VALUES 
(2, 3, 1, 200.00),   
(2, 2, 1, 800.00);

--SELECT * FROM tab_clients
--SELECT * FROM tab_item
--SELECT * FROM tab_orders
--SELECT * FROM tab_orders_item
