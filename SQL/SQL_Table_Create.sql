CREATE TABLE tab_clients 
( 
 client_id INT IDENTITY(1,1) PRIMARY KEY,  
 client_name VARCHAR(100) NOT NULL,            
 client_address VARCHAR(255),                  
 phone VARCHAR(20),                    
 email VARCHAR(100)                     
); 

CREATE TABLE tab_orders 
( 
 order_id INT IDENTITY(1,1) PRIMARY KEY,  
 order_date DATE NOT NULL DEFAULT (GETDATE()) ,  
 total_value DECIMAL (19,6) NOT NULL,  
 client_id INT NOT NULL,  
); 

CREATE TABLE tab_orders_item 
( 
 order_item_id INT IDENTITY(1,1) PRIMARY KEY,  
 unit_price DECIMAL (19,6) NOT NULL,  
 quantity INT NOT NULL,  
 order_id INT NOT NULL,  
 item_id INT NOT NULL,  
); 

CREATE TABLE tab_item 
( 
 item_id INT IDENTITY(1,1) PRIMARY KEY,  
 price DECIMAL (19,6) NOT NULL,  
 item_name VARCHAR(100) NOT NULL,  
 item_description VARCHAR(255),  
); 

ALTER TABLE tab_orders ADD FOREIGN KEY(client_id) REFERENCES tab_clients (client_id)
ALTER TABLE tab_orders_item ADD FOREIGN KEY(order_id) REFERENCES tab_orders (order_id)
ALTER TABLE tab_orders_item ADD FOREIGN KEY(item_id) REFERENCES tab_item (item_id)
