select PRODUCT_NAME from orders
group by PRODUCT_NAME;

select sum(PRICE), PRODUCT_NAME from orders
group by PRODUCT_NAME;

select PRODUCT_NAME from orders
order by PRODUCT_NAME desc;

select * from orders
order by PRICE desc;

select count(*) from orders
where PRICE > 200

select * from orders
where exists (select * from product where NAME =  orders.PRODUCT_NAME);

select * from orders
where exists (select * from product where NAME =  orders.PRODUCT_NAME and PRICE > orders.PRICE);

select * from orders
where PRICE between 1 and 100;

select * from orders
where PRODUCT_NAME like 'c%';

select * from orders
where PRODUCT_NAME like '%a';

select * from orders
where PRODUCT_NAME like '%a%';

