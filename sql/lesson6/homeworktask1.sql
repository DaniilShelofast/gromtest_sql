create table order_details(
ORDER_ID bigint,
constraint ORDER_ID foreign key (ORDER_ID) references orders(ORDER_ID),
PRODUCT_ID bigint,
constraint PRODUCT_ID foreign key (PRODUCT_ID) references products(PRODUCT_ID),
UNIT_PRICE int,
QUANTITY int,
DISCOUNT int
);

create table orders(
ORDER_ID bigint,
constraint ORDER_ID_PK primary key (ORDER_ID),
CUSTOMER_ID bigint,
constraint CUSTOMER_ID foreign key (CUSTOMER_ID) references customers(CUSTOMER_ID),
EMPLOYEE_ID bigint,
constraint EMPLOYEE_ID foreign key (EMPLOYEE_ID) references employees(EMPLOYEE_ID),
ORDER_DATE timestamp,
REQUIRED_DATE timestamp,
SHIPPED_DATE timestamp,
SHIPPER_ID bigint,
constraint SHIPPER_ID foreign key (SHIPPER_ID) references shippers(SHIPPER_ID),
FREIGHT int,
SHIP_NAME nvarchar (50),
SHIP_ADDRESS nvarchar (100),
SHIP_CITY nvarchar (50),
SHIP_REGION nvarchar (50),
SHIP_POSTAL_CODE int,
SHIP_COUNTRY nvarchar(50)
);

create table shippers (
SHIPPER_ID bigint,
constraint SHIPPERS_ID_PK primary key (SHIPPER_ID),
COMPANY_NAME nvarchar (50),
PHONE int
);

create table employees(
EMPLOYEE_ID bigint,
constraint EMPLOYEE_ID_PK primary key (EMPLOYEE_ID),
LAST_NAME nvarchar (50),
FIRST_NAME nvarchar (50),
TITLE nvarchar (100),
TITLE_OF_COURTESY nvarchar(100),
BIRTH_DATE timestamp,
HIRE_DATE timestamp,
ADDRESS nvarchar (50),
CITY nvarchar (50),
REGION nvarchar (50),
POSTAL_CODE int,
COUNTRY nvarchar (50),
HOME_PHONE int,
EXTENSION nvarchar(100),
PHOTO nvarchar (50),
NOTES nvarchar (100),
REPORTS_TO nvarchar(100)
);

create table customers(
CUSTOMER_ID bigint,
constraint CUSTOMER_ID_PK primary key (CUSTOMER_ID),
COMPANY_NAME nvarchar (50),
CONTACT_NAME nvarchar(50),
CONTACT_TITLE nvarchar (50),
ADDRESS nvarchar (50),
CITY nvarchar (50),
REGION nvarchar (50),
POSTAL_CODE nvarchar (50),
COUNTRY nvarchar (50),
PHONE int,
FAX int
);

create table suppliers(
SUPPLIER_ID bigint,
constraint SUPPLIER_ID_PK primary key (SUPPLIER_ID),
COMPANY_NAME nvarchar (50),
CONTACT_NAME nvarchar (50),
CONTACT_TITLE nvarchar (50),
ADDRESS nvarchar (50),
CITY nvarchar (50),
REGION nvarchar (50),
POSTAL_CODE int,
COUNTRY nvarchar (50),
PHONE int,
FAX int,
HOME_PAGE nvarchar (50)
);

create table categories(
CATEGORY_ID bigint,
constraint CATEGORY_ID_PK primary key(CATEGORY_ID),
CATEGORY_NAME nvarchar (50),
DESCRIPTION nvarchar (50),
PICTURE nvarchar (50)
);

create table products(
PRODUCT_ID bigint,
constraint PRODUCT_ID_PK primary key (PRODUCT_ID),
PRODUCT_NAME nvarchar (100),
SUPPLIER_ID bigint,
constraint SUPPLIER_ID foreign key (SUPPLIER_ID) references suppliers (SUPPLIER_ID),
CATEGORY_ID bigint,
constraint CATEGORY_ID foreign key (CATEGORY_ID) references categories (CATEGORY_ID),
QUANTITY_PER_UNIT int,
UNIT_PRICE int,
UNITS_IN_STOCK int,
UNITS_ON_ORDER int,
REORDER_LEVEL int,
DISCONTINUED timestamp
);

