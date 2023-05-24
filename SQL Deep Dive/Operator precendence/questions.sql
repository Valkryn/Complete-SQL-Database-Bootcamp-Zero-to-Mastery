
/*
* DB: Store
* Table: Customers
* Question: 
* Select people either under 30 or over 50 with an income above 50000
* Include people that are 50
* that are from either Japan or Australia
*/

SELECT * FROM customers
    WHERE (
            (age >=50 or age < 20) AND 
                (country = 'Japan' OR country = 'Australia')
            )
        AND income > 50000

/*
* DB: Store
* Table: Orders
* Question: 
* What was our total sales in June of 2004 for orders over 100 dollars?
*/

SELECT SUM(totalamount) FROM orders
    where orderdate >='2004-06-01' and orderdate < '2004-07-01'
        AND totalamount > 100
