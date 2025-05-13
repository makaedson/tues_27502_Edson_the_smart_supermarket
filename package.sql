-- Specification
CREATE OR REPLACE PACKAGE supermarket_pkg AS
    PROCEDURE add_invoice_p (
        p_customer_id IN NUMBER,
        p_employee_id IN NUMBER,
        p_product_id IN NUMBER,
        p_quantity IN NUMBER
    );

    FUNCTION calculate_invoice_total(p_invoice_id IN NUMBER) RETURN NUMBER;
END;
/

-- Body
CREATE OR REPLACE PACKAGE BODY supermarket_pkg AS
    PROCEDURE add_invoice_p (
        p_customer_id IN NUMBER,
        p_employee_id IN NUMBER,
        p_product_id IN NUMBER,
        p_quantity IN NUMBER
    ) IS
    BEGIN
        add_invoice(p_customer_id, p_employee_id, p_product_id, p_quantity);
    END;

    FUNCTION calculate_invoice_total(p_invoice_id IN NUMBER) RETURN NUMBER IS
    BEGIN
        RETURN get_invoice_total(p_invoice_id);
    END;
END;
/
