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


select * from EMPLOYEES;
select distinct salary from EMPLOYEES order by salary desc;

