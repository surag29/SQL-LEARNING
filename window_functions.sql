select*from employee_demographics;
select*from employee_salary;

select gender, avg(salary) as avg_salary
from employee_demographics dem
join employee_salary sal
on dem.employee_id =  sal.employee_id
group by gender ;

-- gender from 1st table and salary from second table then use of group by

select dem.first_name ,gender, avg(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id =  sal.employee_id ;


-- so basically when we try to add another non aggregated column in group by it does not support while 
-- when we use window function the avg salary becomes independent of the other columns you can 
-- take any columns 

select dem.first_name ,gender, sum(salary) over(partition by gender)
from employee_demographics dem
join employee_salary sal
on dem.employee_id =  sal.employee_id ;

select dem.first_name  ,gender,  salary, sum(salary) over(partition by gender order by dem.employee_id)
as rolling_total
from employee_demographics dem
join employee_salary sal
on dem.employee_id =  sal.employee_id ;

select dem.employee_id,dem.first_name ,gender,  salary ,
row_number() over(partition by gender order by salary desc) as row_num,
rank()  over(partition by gender order by salary desc) as rank_num,
dense_rank()  over(partition by gender order by salary desc) as dense_num

from employee_demographics dem
join employee_salary sal
on dem.employee_id =  sal.employee_id ;


 