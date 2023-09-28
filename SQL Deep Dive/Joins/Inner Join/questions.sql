
/*
* DB: Store
* Table: orders
* Question: Get all orders from customers who live in Ohio (OH), New York (NY) or Oregon (OR) state
* ordered by orderid
*/
select * from customers as c
    inner join orders as o on c.customerid = o.customerid
        WHERE c.state IN ('NY','OH','OR');


/*
* DB: Store
* Table: products
* Question: Show me the inventory for each product
*/
SELECT * FROM products AS P
    INNER JOIN inventory as i using(prod_id);

/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

select e.emp_no , e.first_name,d.dept_name from employees as e
 inner join dept_emp as de using (emp_no)
 inner join departments as d using (dept_no);

select e.emp_no , e.first_name,d.dept_name from employees as e
 inner join dept_emp as de on e.emp_no = de.emp_no
 inner join departments as d on de.dept_no = d.dept_no;





