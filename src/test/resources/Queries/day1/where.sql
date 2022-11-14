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

select COUNTRY_NAME
from COUNTRIES
where COUNTRY_ID NOT IN ('US', 'IT');

-- IS NULL

-- display all information from employees where department id is null
select *
from EMPLOYEES
where DEPARTMENT_ID is null;

-- display all information from emplyees where manager id is null
select *
from EMPLOYEES
where MANAGER_ID is null;

-- IS NOT NULL
-- display all information from employees where department id is not null
select *
from EMPLOYEES
where DEPARTMENT_ID is not null;

-- display all information from emplyees where manager id is not null
select *
from EMPLOYEES
where MANAGER_ID is not null;

/*
 ORDERBY

    - It allows us to sort data based on provided column
    - AS A DEFAULT it will order the result ASCENDING ORDER (A-Z,0-9)
    - If you wanna sort it DESCENDING order we need specify right after column name

 */
-- display all employees based salary in asc order
select *
from EMPLOYEES
order by SALARY;

select *
from EMPLOYEES
order by SALARY asc;

-- display all employees based salary in desc order
select *
from EMPLOYEES
order by salary desc;


select *
from EMPLOYEES
order by FIRST_NAME desc;


-- Can we use index to order results ?
-- YES we can
-- Index needs to within limit from column number
select *
from EMPLOYEES
order by 8 desc;

select first_name, LAST_NAME, email
from EMPLOYEES
order by 3 desc;

-- display all informatin from employees
-- where employee id is smaller than 120 and order them based on salary desc order
select *
from EMPLOYEES
where EMPLOYEE_ID < 120
order by SALARY desc;

select *
from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;