-- group by 
 
 select gender 
 from employee_demographics
 group by gender;
 
 
 select*from employee_salary;
 
 
  select occupation 
  employee_salary 
  group by occupation;
  
  
select gender, avg(age)   # aggregate functions 
from employee_demographics
group by gender;

select occupation , avg(salary) 
from employee_salary 
group by occupation;

select gender, avg(age),max(age),count(*)   # aggregate functions 
from employee_demographics
group by gender;


--  order by 

select* from employee_demographics
order by gender , age asc;


-- having vs where  

select gender, avg(age)   # aggregate functions 
from employee_demographics
group by gender
having avg(age) > 40;
  
  
  select occupation, avg(salary)
  from employee_salary
  where occupation like '%manager%'
  group by occupation
  having avg(salary)>75000
  