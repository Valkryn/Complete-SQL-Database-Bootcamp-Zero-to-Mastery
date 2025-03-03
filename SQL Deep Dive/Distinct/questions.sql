/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT DISTINCT(title) FROM titles;


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

select count( DISTINCT(birth_date)) from public.employees;

/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

select DISTINCT(lifeexpectancy) from public.country
    WHERE lifeexpectancy is not null;

