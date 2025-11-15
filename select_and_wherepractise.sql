#select query

SELECT * FROM parks_and_recreation.employee_demographics;
select first_name,gender from employee_demographics;
select first_name,age,
gender,age+10 from employee_demographics;
# PEMDAS

select distinct  first_name,gender  from employee_demographics;  # distinct 


# where clause

select* from employee_salary
where salary > 50000;
 
 
 select*from employee_demographics
 where gender  = "female";
 
 
 -- logical operators
 
 select*from employee_demographics
 where  birth_date >  '1985-01-01' and gender = 'male';
 
 select*from employee_demographics
 where ( first_name = 'tom' and age = 36) or age>55;
 
 
 -- like operators
 -- % and _
 
 select*from employee_demographics
 where first_name like "a%";
 
  select*from employee_demographics
 where first_name like "a__";