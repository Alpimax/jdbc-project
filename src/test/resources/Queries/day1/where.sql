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