CREATE OR REPLACE PROCEDURE add_invoice (
    p_customer_id IN NUMBER,
    p_employee_id IN NUMBER,
    p_product_id IN NUMBER,
    p_quantity IN NUMBER
) IS
    v_invoice_id NUMBER;
BEGIN
    INSERT INTO INVOICE (customer_id, employee_id)
    VALUES (p_customer_id, p_employee_id)
    RETURNING invoice_id INTO v_invoice_id;

    INSERT INTO INVOICE_DETAIL (invoice_id, product_id, quantity)
    VALUES (v_invoice_id, p_product_id, p_quantity);

    DBMS_OUTPUT.PUT_LINE('Invoice created with ID: ' || v_invoice_id);
END;
/
