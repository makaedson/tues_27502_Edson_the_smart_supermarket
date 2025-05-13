-- Inserting data into CATEGORY table
INSERT INTO CATEGORY (name) VALUES ('Fruits');
INSERT INTO CATEGORY (name) VALUES ('Vegetables');
INSERT INTO CATEGORY (name) VALUES ('Dairy');
INSERT INTO CATEGORY (name) VALUES ('Bakery');

-- Inserting data into PRODUCT table
INSERT INTO PRODUCT (name, price, quantity, category_id)
VALUES ('Bananas', 150.00, 100, 1);
INSERT INTO PRODUCT (name, price, quantity, category_id)
VALUES ('Avocados', 350.00, 200, 1);
INSERT INTO PRODUCT (name, price, quantity, category_id)
VALUES ('Carrots', 200.00, 150, 2);
INSERT INTO PRODUCT (name, price, quantity, category_id)
VALUES ('Milk', 1200.00, 80, 3);
INSERT INTO PRODUCT (name, price, quantity, category_id)
VALUES ('Bread', 500.00, 200, 4);

-- Inserting data into CUSTOMER table
INSERT INTO CUSTOMER (name, phone)
VALUES ('Jean-Pierre Mukamurera', '0788456750');
INSERT INTO CUSTOMER (name, phone)
VALUES ('Aline Uwase', '0734567890');
INSERT INTO CUSTOMER (name, phone)
VALUES ('Patricia Nyiramahoro', '0789123456');

-- Inserting data into SUPPLIER table
INSERT INTO SUPPLIER (name, contact)
VALUES ('Kigali Traders', '0783123456');
INSERT INTO SUPPLIER (name, contact)
VALUES ('Rwanda Fresh Produce', '0734567890');

-- Inserting data into EMPLOYEE table
INSERT INTO EMPLOYEE (name, role, phone)
VALUES ('Kamanzi John', 'Cashier', '0782345678');
INSERT INTO EMPLOYEE (name, role, phone)
VALUES ('Nshuti Sylvain', 'Manager', '0732233445');
INSERT INTO EMPLOYEE (name, role, phone)
VALUES ('Ineza Claire', 'Stock Keeper', '0787654321');

-- Inserting data into INVOICE table
INSERT INTO INVOICE (customer_id, employee_id)
VALUES (1, 2);
INSERT INTO INVOICE (customer_id, employee_id)
VALUES (2, 1);
INSERT INTO INVOICE (customer_id, employee_id)
VALUES (3, 3);

-- Inserting data into INVOICE_DETAIL table
INSERT INTO INVOICE_DETAIL (invoice_id, product_id, quantity)
VALUES (1, 1, 5);
INSERT INTO INVOICE_DETAIL (invoice_id, product_id, quantity)
VALUES (2, 3, 10);
INSERT INTO INVOICE_DETAIL (invoice_id, product_id, quantity)
VALUES (3, 4, 3);

-- Inserting data into ORDER_SUPERMARKET table
INSERT INTO ORDER_SUPERMARKET (product_id, supplier_id, quantity)
VALUES (1, 1, 50);
INSERT INTO ORDER_SUPERMARKET (product_id, supplier_id, quantity)
VALUES (2, 2, 100);

-- Inserting data into STOCK table
INSERT INTO STOCK (product_id, quantity)
VALUES (1, 100);
INSERT INTO STOCK (product_id, quantity)
VALUES (2, 200);
INSERT INTO STOCK (product_id, quantity)
VALUES (3, 150);
INSERT INTO STOCK (product_id, quantity)
VALUES (4, 80);
INSERT INTO STOCK (product_id, quantity)
VALUES (5, 200);

-- Inserting data into AUDIT_LOG table
INSERT INTO AUDIT_LOG (action, user_id)
VALUES ('Inserted new product', 1);
INSERT INTO AUDIT_LOG (action, user_id)
VALUES ('Processed invoice', 2);

-- Inserting data into HOLIDAY table
INSERT INTO HOLIDAY (name, holiday_date)
VALUES ('Umuganura', TO_DATE('2025-08-01', 'YYYY-MM-DD'));

INSERT INTO HOLIDAY (name, holiday_date)
VALUES ('Kwita Izina', TO_DATE('2025-09-01', 'YYYY-MM-DD'));

-- Add a category
INSERT INTO CATEGORY (name) VALUES ('Snacks');

-- Add products
INSERT INTO PRODUCT (name, price, quantity, category_id) VALUES ('Chips', 500, 100, 1);
INSERT INTO PRODUCT (name, price, quantity, category_id) VALUES ('Biscuits', 800, 100, 1);

-- Add a customer and employee
INSERT INTO CUSTOMER (name, phone) VALUES ('Jean Bosco', '0788000001');
INSERT INTO EMPLOYEE (name, role, phone) VALUES ('Alice Mukamana', 'Cashier', '0788123456');


-- Insert invoice
INSERT INTO INVOICE (customer_id, employee_id) VALUES (1, 1);

-- Insert invoice details (2 chips, 3 biscuits)
INSERT INTO INVOICE_DETAIL (invoice_id, product_id, quantity) VALUES (1, 1, 2);
INSERT INTO INVOICE_DETAIL (invoice_id, product_id, quantity) VALUES (1, 2, 3);
