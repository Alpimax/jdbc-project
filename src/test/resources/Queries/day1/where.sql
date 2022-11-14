select *
from EMPLOYEES
where FIRST_NAME = 'David';

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where FIRST_NAME = 'Peter';

select FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
where FIRST_NAME = 'David'
  and LAST_NAME = 'Austin';

select FIRST_NAME
from EMPLOYEES
where SALARY > 6000;


select EMAIL
from EMPLOYEES
where SALARY < 6000;

select *
from EMPLOYEES
where SALARY >= 3000
  and SALARY <= 7000;

select *
from EMPLOYEES
where SALARY between 300 and 7000;

select *
from EMPLOYEES
where JOB_ID = 'IT_PROG'
   or JOB_ID = 'MK_MAN';

select *
from EMPLOYEES
where JOB_ID in ('IT_PROG', 'MK_MAN');

select *
from EMPLOYEES
where EMPLOYEE_ID in (121, 143, 156, 134);

select COUNTRY_NAME from COUNTRIES
where COUNTRY_ID NOT IN('US','IT');

-- IS NULL

-- display all information from employees where department id is null
select * from EMPLOYEES
where DEPARTMENT_ID is null;

-- display all information from emplyees where manager id is null
select * from EMPLOYEES
where MANAGER_ID is null;

-- IS NOT NULL
-- display all information from employees where department id is not null
select * from EMPLOYEES
where DEPARTMENT_ID is not null;

-- display all information from emplyees where manager id is not null
select * from EMPLOYEES
where MANAGER_ID is not null ;