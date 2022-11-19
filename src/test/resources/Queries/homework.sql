select min(SALARY)
from EMPLOYEES;

select *
from EMPLOYEES
where SALARY = (select max(SALARY)
                from EMPLOYEES);

select *
from EMPLOYEES
where salary = (select min(SALARY)
                from EMPLOYEES
                where salary > (select min(SALARY)
                                from EMPLOYEES
                                where salary > (select min(SALARY)
                                                from EMPLOYEES)));

select *
from EMPLOYEES
where salary > (select avg(SALARY) from EMPLOYEES);

select *
from EMPLOYEES
where salary < (select avg(SALARY) from EMPLOYEES);


select *
from EMPLOYEES;
select distinct salary
from EMPLOYEES
order by salary desc;

select min(salary)
from (select distinct SALARY from EMPLOYEES order by salary desc);

select *
from EMPLOYEES
where salary = (select min(SALARY) from (select distinct SALARY from EMPLOYEES order by salary desc) where rownum < 4);

select *
from employees;

CREATE TABLE address
(
    address_id Integer PRIMARY KEY,
    address    VARCHAR(50) NOT NULL,
    phone      Integer     NOT NULL
);

INSERT INTO address (address_id, address, phone)
VALUES (5, '1913 Hanoi Way', 28303384);
INSERT INTO address (address_id, address, phone)
VALUES (7, '692 Joliet Street', 44847719);
INSERT INTO address (address_id, address, phone)
VALUES (8, '1566 Inegl Manor', 70581400);
INSERT INTO address (address_id, address, phone)
VALUES (10, '1795 Santiago', 86045262);
INSERT INTO address (address_id, address, phone)
VALUES (11, '900 Santiago', 16571220);

select *
from address;

CREATE TABLE customer
(
    customer_id Integer PRIMARY KEY,
    first_name  VARCHAR(50) NOT NULL,
    last_name   VARCHAR(50) NOT NULL,
    address_id  Integer REFERENCES address (address_id)
);

INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (1, 'Mary', 'Smith', 5);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (2, 'Patricia', 'Johnson', NULl);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (3, 'Linda', 'Williams', 7);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (4, 'Barbara', 'Jones', 8);
INSERT INTO customer (customer_id, first_name, last_name, address_id)
VALUES (5, 'Elizabeth', 'Brown', NULL);

commit work;

select *
from customer;

select *
from EMPLOYEES;
-- 1
select COUNTRY_NAME, REGION_NAME
from COUNTRIES C
         INNER JOIN REGIONS R ON C.REGION_ID = R.REGION_ID;
-- 2
SELECT FIRST_NAME, JOB_TITLE
FROM EMPLOYEES E
         INNER JOIN JOBS J ON E.JOB_ID = J.JOB_ID;
-- 3
select DEPARTMENT_NAME, CITY
from DEPARTMENTS d
         inner join LOCATIONS on d.LOCATION_ID = LOCATIONS.LOCATION_ID;

-- 4
select CITY, COUNTRY_NAME
from LOCATIONS L
         FULL JOIN COUNTRIES C ON L.COUNTRY_ID = C.COUNTRY_ID;
-- 5
select concat(concat(FIRST_NAME, ' '), LAST_NAME) as fullname, D.DEPARTMENT_ID, DEPARTMENT_NAME
from EMPLOYEES E
         inner join DEPARTMENTS D on E.DEPARTMENT_ID = D.DEPARTMENT_ID
where E.DEPARTMENT_ID = '40'
   or E.DEPARTMENT_ID = '80';
-- 6

select *
from LOCATIONS L inner join  COUNTRIES C on L.COUNTRY_ID = C.COUNTRY_ID;