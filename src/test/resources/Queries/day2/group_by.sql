select * from employees;

-- Task1 : display average salary for IT_PROG
select avg(salary) from EMPLOYEES
where JOB_ID='IT_PROG';

-- Task 2  : display average salary for SA_REP
select avg(salary) from EMPLOYEES
where JOB_ID='SA_REP';

-- Task 3  : display average salary for SA_REP
select avg(salary) from EMPLOYEES
where JOB_ID='MK_MAN';

-- how many different job id we have ?
select count(distinct job_id) from EMPLOYEES;

/*
    INSTEAD OF TYING SAME QUERY FRO DIFFERENT JOB IDs
    We are gonna group them based on JOB ID and get average salary in one shot
 */
select * from EMPLOYEES;



select JOB_ID,avg(salary),min(salary),max(SALARY),sum(salary),count(*) from EMPLOYEES
group by JOB_ID;


-- get me total salary for EACH department from Employees table
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null   -- to remove null department id from result
group by DEPARTMENT_ID;

-- order results based on max salary in asc
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null   -- to remove null department id from result
group by DEPARTMENT_ID
order by max(salary);

-- order results based on max salary in asc and min salary desc
select DEPARTMENT_ID,sum(salary),count(*),max(salary),min(salary),round(avg(salary)) from EMPLOYEES
where DEPARTMENT_ID is not null   -- to remove null department id from result
group by DEPARTMENT_ID
order by max(salary) , min(salary) desc;