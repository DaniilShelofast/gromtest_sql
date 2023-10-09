
CREATE TABLE DEAL (
    CUSTOMER_ID BIGINT,
    CONSTRAINT DEAL_CUSTOMER_ID_FK FOREIGN KEY (CUSTOMER_ID)
        REFERENCES customer (CUSTOMER_ID),
    AMOUNT INT NOT NULL,
    DATE TIMESTAMP NOT NULL
);


SELECT
    salesman.NAME, customer.CUSTNAME, salesman.CITY
FROM
    salesman , customer
   where
      salesman.CITY = customer.CITY;


SELECT
    salesman.NAME, customer.CUSTNAME, salesman.CITY
FROM
    salesman
        JOIN
    customer ON salesman.CITY = customer.CITY;


SELECT
    salesman.NAME, customer.CUSTNAME
FROM
    salesman
        JOIN
    customer ON salesman.SALESMAN_ID = customer.SALESMAN_ID;


SELECT
    salesman.NAME, salesman.CITY, customer.CUSTNAME, customer.CITY
FROM
    salesman
        JOIN
    customer ON salesman.SALESMAN_ID = customer.SALESMAN_ID
        JOIN
    deal ON customer.CUSTOMER_ID = deal.CUSTOMER_ID
WHERE
    deal.AMOUNT > 10000


SELECT
   customer.CUSTNAME
FROM
    salesman
        JOIN
    customer ON salesman.SALESMAN_ID = customer.SALESMAN_ID
        JOIN
    deal ON customer.CUSTOMER_ID = deal.CUSTOMER_ID
WHERE
    deal.DATE BETWEEN '2017-01-01' AND '2018-12-31';


SELECT
    salesman.NAME
FROM
    salesman
        JOIN
    customer ON salesman.SALESMAN_ID = customer.SALESMAN_ID
        JOIN
    deal ON customer.CUSTOMER_ID = deal.CUSTOMER_ID
WHERE
    deal.DATE BETWEEN '2017-01-01' AND '2017-12-31'
GROUP BY salesman.NAME
ORDER BY SUM(deal.AMOUNT) DESC