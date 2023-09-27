/*
* DB: Employees
* Table: employees
* Question: Sort employees by first name ascending and last name descending
*/
select * from public.employees
    order by first_name , last_name DESC;


/*
* DB: Employees
* Table: employees
* Question: Sort employees by age
*/
SELECT EXTRACT(YEAR FROM AGE(birth_date)) AS "age" FROM public.employees
    ORDER BY birth_date desc;

/*
* DB: Employees
* Table: employees
* Question: Sort employees who's name starts with a "k" by hire_date
*/
select first_name , hire_date from public.employees
    where first_name like 'K%'
    ORDER BY hire_date;
