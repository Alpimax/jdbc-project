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
where salary = (select min(SALARY)from (select distinct  SALARY from EMPLOYEES order by salary desc )where rownum <4);


