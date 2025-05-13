SET SERVEROUTPUT ON
DECLARE
    CURSOR low_stock_cursor IS
        SELECT p.name, s.quantity
        FROM PRODUCT p
        JOIN STOCK s ON p.product_id = s.product_id
        WHERE s.quantity < 10;

    v_name PRODUCT.name%TYPE;
    v_quantity STOCK.quantity%TYPE;
BEGIN
    OPEN low_stock_cursor;
    LOOP
        FETCH low_stock_cursor INTO v_name, v_quantity;
        EXIT WHEN low_stock_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Low Stock - ' || v_name || ': ' || v_quantity);
    END LOOP;
    CLOSE low_stock_cursor;
END;
/
