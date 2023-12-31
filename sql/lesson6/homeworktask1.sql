CREATE TABLE order_details (
    ORDER_ID BIGINT NOT NULL,
    CONSTRAINT ORDER_ID FOREIGN KEY (ORDER_ID)
        REFERENCES orders (ORDER_ID),
    PRODUCT_ID BIGINT,
    CONSTRAINT PRODUCT_ID FOREIGN KEY (PRODUCT_ID)
        REFERENCES products (PRODUCT_ID),
    UNIT_PRICE INT,
    QUANTITY INT,
    DISCOUNT INT
);


CREATE TABLE orders (
    ORDER_ID BIGINT NOT NULL,
    CONSTRAINT ORDER_ID_PK PRIMARY KEY (ORDER_ID),
    CUSTOMER_ID BIGINT,
    CONSTRAINT CUSTOMER_ID FOREIGN KEY (CUSTOMER_ID)
        REFERENCES customers (CUSTOMER_ID),
    EMPLOYEE_ID BIGINT,
    CONSTRAINT EMPLOYEE_ID FOREIGN KEY (EMPLOYEE_ID)
        REFERENCES employees (EMPLOYEE_ID),
    ORDER_DATE TIMESTAMP,
    REQUIRED_DATE TIMESTAMP,
    SHIPPED_DATE TIMESTAMP,
    SHIPPER_ID BIGINT,
    CONSTRAINT SHIPPER_ID FOREIGN KEY (SHIPPER_ID)
        REFERENCES shippers (SHIPPER_ID),
    FREIGHT INT,
    SHIP_NAME VARCHAR(50),
    SHIP_ADDRESS VARCHAR(100),
    SHIP_CITY VARCHAR(50),
    SHIP_REGION VARCHAR(50),
    SHIP_POSTAL_CODE INT,
    SHIP_COUNTRY VARCHAR(50)
);


CREATE TABLE shippers (
    SHIPPER_ID BIGINT NOT NULL,
    CONSTRAINT SHIPPERS_ID_PK PRIMARY KEY (SHIPPER_ID),
    COMPANY_NAME VARCHAR(50),
    PHONE INT
);

CREATE TABLE employees (
    EMPLOYEE_ID BIGINT NOT NULL,
    CONSTRAINT EMPLOYEE_ID_PK PRIMARY KEY (EMPLOYEE_ID),
    LAST_NAME NVARCHAR(50),
    FIRST_NAME NVARCHAR(50),
    TITLE NVARCHAR(100),
    TITLE_OF_COURTESY NVARCHAR(100),
    BIRTH_DATE TIMESTAMP,
    HIRE_DATE TIMESTAMP,
    ADDRESS NVARCHAR(50),
    CITY NVARCHAR(50),
    REGION NVARCHAR(50),
    POSTAL_CODE INT,
    COUNTRY VARCHAR(50),
    HOME_PHONE INT,
    EXTENSION VARCHAR(100),
    PHOTO VARCHAR(50),
    NOTES VARCHAR(100),
    REPORTS_TO VARCHAR(100)
);

CREATE TABLE customers (
    CUSTOMER_ID BIGINT NOT NULL,
    CONSTRAINT CUSTOMER_ID_PK PRIMARY KEY (CUSTOMER_ID),
    COMPANY_NAME VARCHAR(50),
    CONTACT_NAME VARCHAR(50),
    CONTACT_TITLE VARCHAR(50),
    ADDRESS VARCHAR(50),
    CITY VARCHAR(50),
    REGION VARCHAR(50),
    POSTAL_CODE VARCHAR(50),
    COUNTRY VARCHAR(50),
    PHONE INT,
    FAX INT
);

CREATE TABLE suppliers (
    SUPPLIER_ID BIGINT NOT NULL,
    CONSTRAINT SUPPLIER_ID_PK PRIMARY KEY (SUPPLIER_ID),
    COMPANY_NAME VARCHAR(50),
    CONTACT_NAME VARCHAR(50),
    CONTACT_TITLE VARCHAR(50),
    ADDRESS VARCHAR(50),
    CITY VARCHAR(50),
    REGION VARCHAR(50),
    POSTAL_CODE INT,
    COUNTRY VARCHAR(50),
    PHONE INT,
    FAX INT,
    HOME_PAGE VARCHAR(50)
);

CREATE TABLE categories (
    CATEGORY_ID BIGINT NOT NULL
    CONSTRAINT CATEGORY_ID_PK PRIMARY KEY (CATEGORY_ID),
    CATEGORY_NAME VARCHAR(50),
    DESCRIPTION VARCHAR(50),
    PICTURE VARCHAR(50)
);

CREATE TABLE products (
    PRODUCT_ID BIGINT NOT NULL,
    CONSTRAINT PRODUCT_ID_PK PRIMARY KEY (PRODUCT_ID),
    PRODUCT_NAME VARCHAR(100),
    SUPPLIER_ID BIGINT,
    CONSTRAINT SUPPLIER_ID FOREIGN KEY (SUPPLIER_ID)
        REFERENCES suppliers (SUPPLIER_ID),
    CATEGORY_ID BIGINT,
    CONSTRAINT CATEGORY_ID FOREIGN KEY (CATEGORY_ID)
        REFERENCES categories (CATEGORY_ID),
    QUANTITY_PER_UNIT INT,
    UNIT_PRICE INT,
    UNITS_IN_STOCK INT,
    UNITS_ON_ORDER INT,
    REORDER_LEVEL INT,
    DISCONTINUED TIMESTAMP
);

