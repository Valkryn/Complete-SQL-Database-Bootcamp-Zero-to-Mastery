/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE  OR REPLACE VIEW "90-95" AS select * from employees
    where EXTRACT(year from hire_date) BETWEEN '1990' AND '1995'
    ORDER BY hire_date;
-- ...

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

create or replace view "Big Bucks" as SELECT e.emp_no , e.first_name , max(s.salary) FROM employees as e
    inner join salaries as s using(emp_no)
    where s.salary > 80000
    group by e.emp_no , e.first_name
    order by e.emp_no ;
    
-- ...
