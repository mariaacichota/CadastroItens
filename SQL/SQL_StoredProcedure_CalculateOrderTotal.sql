CREATE PROCEDURE CalculateOrderTotal
    @order_id INT,  
    @total_value DECIMAL(19, 6) OUTPUT  
AS
BEGIN
    SET @total_value = 0;

    SELECT @total_value = SUM(tab_orders_item.quantity * tab_orders_item.unit_price)
    FROM tab_orders_item 
    WHERE tab_orders_item.order_id = @order_id;

    RETURN @total_value;
END;


DECLARE @total DECIMAL(19, 6);

EXEC CalculateOrderTotal @order_id = 1, @total_value = @total OUTPUT;

SELECT @total AS TotalValue;