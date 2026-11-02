use employees_salary;
select*from salary;
-- Employees with a Salary Above 100,000 rupees
select name, salary from salary where salary > 100000 ;
-- Gender-wise Salary
select gender, sum(salary) from salary group by gender;
-- Location-wise Salary in Descending Order
select location, sum(salary) from salary group by location order by sum(salary) desc;
-- Department-wise Total Employee Count and Salary in Descending Order
select COUNT(*) AS total_employees, department, sum(salary) from salary group by department order by sum(salary) desc;
-- Employees Aged 60 Years Eligible for Retirement 
select name, age from salary where age >= 60;
-- eduction wise total employee count and salary above 100000 rupees
select count(*), eduction, sum(salary) from salary where salary >= 100000 group by eduction;