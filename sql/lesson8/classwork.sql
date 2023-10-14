alter table customer
add AGE int;

alter table customer
drop column AGE;

alter table customer
modify CUSTNAME varchar(100) not null;

alter table customer
add AGE int not null default 0;