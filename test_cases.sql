
SET SERVEROUTPUT ON
BEGIN
    add_invoice(1, 1, 1, 3); -- Assuming IDs exist
END;
/

SET SERVEROUTPUT ON
DECLARE
    total NUMBER;
BEGIN
    total := get_invoice_total(1);
    DBMS_OUTPUT.PUT_LINE('Total for invoice 1: ' || total);
END;
/

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

INSERT INTO PRODUCT (name, price, quantity, category_id)
VALUES ('Juice', 1500, 15, 1);


UPDATE PRODUCT
SET price = 1600
WHERE name = 'Juice';

SELECT * FROM AUDIT_LOG
ORDER BY log_id DESC;

SET SERVEROUTPUT ON
DECLARE
    v_total NUMBER;
BEGIN
    v_total := get_invoice_total(1);
    DBMS_OUTPUT.PUT_LINE('Total Invoice Amount: ' || v_total);
END;
/

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
