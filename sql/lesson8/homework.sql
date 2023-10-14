alter table employees
drop column NOTES,
drop column PHOTO,
drop column REPORTS_TO;
--------------------------------------------------
alter table customers
add column IS_ACTIVE int (1) not null default 0;
--------------------------------------------------
alter table categories
modify column PICTURE varchar(100) not null;
--------------------------------------------------
alter table products
drop  foreign key SUPPLIER_ID;

alter table products
change SUPPLIER_ID PHONE bigint;

alter table suppliers
drop primary key,
add primary key (PHONE);

alter table products
add constraint SUPPLIER_ID
foreign key (PHONE)
references suppliers (PHONE);