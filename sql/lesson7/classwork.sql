CREATE TABLE SALESMAN (
    SALESMAN_ID BIGINT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    COMMISSION DECIMAL(5 , 2 ) DEFAULT '0.1'
);

CREATE TABLE CUSTOMER (
    CUSTOMER_ID BIGINT PRIMARY KEY,
    CUSTNAME VARCHAR(50) NOT NULL,
    CITY VARCHAR(50) NOT NULL,
    SALESMAN_ID BIGINT,
    CONSTRAINT SALESMAN_FK FOREIGN KEY (SALESMAN_ID)
        REFERENCES salesman (SALESMAN_ID)
);


SELECT
    salesman.NAME, customer.CUSTNAME
FROM
    salesman,
    customer
WHERE
    salesman.SALESMAN_ID = customer.SALESMAN_ID;


SELECT
    salesman.NAME, customer.CUSTNAME
FROM
    salesman
        JOIN
    customer ON salesman.SALESMAN_ID = customer.SALESMAN_ID;


SELECT
    salesman.NAME, customer.CUSTNAME, salesman.CITY
FROM
    salesman
        JOIN
    customer ON salesman.CITY = customer.CITY;


SELECT
    salesman.NAME, customer.CUSTNAME, salesman.CITY
FROM
    salesman
        LEFT JOIN
    customer ON salesman.CITY = customer.CITY;


SELECT
    salesman.NAME, customer.CUSTNAME, salesman.CITY
FROM
    salesman
        RIGHT JOIN
    customer ON salesman.CITY = customer.CITY;