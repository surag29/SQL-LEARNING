-- joins

SELECT*FROM employee_demographics;
SELECT*FROM employee_salary;


-- inner joins
select*from employee_demographics
inner join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id;

-- outer left join
select*from employee_demographics
left join employee_salary
on employee_demographics.employee_id = employee_salary.employee_id;


-- outer right joins
select*from employee_demographics as dm
right join employee_salary as es
on dm.employee_id = es.employee_id;


-- self joins
select*from employee_salary emp1
join employee_salary emp2
on emp1.employee_id +1 = emp2.employee_id;

select emp1.employee_id as emp_santa,
emp1.first_name as first_santa,
emp1.last_name as last_santa,
emp2.employee_id as emp_santa__,
emp2.first_name as first_santa__,
emp2.last_name as last_santa__

from employee_salary emp1
join employee_salary emp2
on emp1.employee_id+1 = emp2.employee_id



