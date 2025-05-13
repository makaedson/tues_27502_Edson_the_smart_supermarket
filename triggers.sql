-- TRIGGER TO AUDIT PRODUCT TABLE CHANGES
CREATE OR REPLACE TRIGGER trg_product_audit
AFTER INSERT OR UPDATE OR DELETE ON PRODUCT
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO AUDIT_LOG (action, user_id)
        VALUES ('Inserted product: ' || :NEW.name, NULL);
    ELSIF UPDATING THEN
        INSERT INTO AUDIT_LOG (action, user_id)
        VALUES ('Updated product: ' || :OLD.name, NULL);
    ELSIF DELETING THEN
        INSERT INTO AUDIT_LOG (action, user_id)
        VALUES ('Deleted product: ' || :OLD.name, NULL);
    END IF;
END;
/

-- TRIGGER TO UPDATE STOCK AFTER INVOICE DETAIL INSERTION
CREATE OR REPLACE TRIGGER trg_invoice_detail_update_stock
AFTER INSERT ON INVOICE_DETAIL
FOR EACH ROW
BEGIN
    UPDATE STOCK
    SET quantity = quantity - :NEW.quantity,
        last_updated = SYSTIMESTAMP
    WHERE product_id = :NEW.product_id;
END;
/