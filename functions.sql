CREATE OR REPLACE FUNCTION get_invoice_total(p_invoice_id IN NUMBER)
RETURN NUMBER IS
    v_total NUMBER := 0;
BEGIN
    SELECT SUM(p.price * d.quantity)
    INTO v_total
    FROM INVOICE_DETAIL d
    JOIN PRODUCT p ON d.product_id = p.product_id
    WHERE d.invoice_id = p_invoice_id;

    RETURN v_total;
END;
/
