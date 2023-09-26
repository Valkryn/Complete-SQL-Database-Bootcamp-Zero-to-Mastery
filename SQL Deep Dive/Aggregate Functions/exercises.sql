-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: Employees
 */
-- 


-- Question 1: What is the average salary for the company?
-- Table: Salaries

SELECT avg(salary) FROM public.salaries
    WHERE to_date = '9999-01-01';
-- The reason for entering the 'to_date condition is to get the current salary of employees. this way past salaries will not be included.


-- Question 2: What year was the youngest person born in the company?
-- Table: employees
select * from public.employees
    order by birth_date desc;
--Alternate way
select max(birth_date) from public.employees;

-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: France
 */

-- 

-- Question 1: How many towns are there in france?
-- Table: Towns
select COUNT(*) from public.towns;


-- BEFORE YOU START
/*
 * What database should I use for these exercises?
 * Name: World
 */
-- 

-- Question 1: How many official languages are there?
-- Table: countrylanguage
SELECT count("language") FROM public.countrylanguage
    WHERE isofficial = 'true';

-- Question 2: What is the average life expectancy in the world?
-- Table: country
select avg(lifeexpectancy) from public.country;

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

select avg( population) AS "Average Population" from public.city
    WHERE countrycode = 'NLD' ;
