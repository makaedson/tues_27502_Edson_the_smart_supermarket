
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
