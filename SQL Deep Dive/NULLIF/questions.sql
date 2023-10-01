/*
* DB: Store
* Table: products
* Question: Show NULL when the product is not on special (0)
*/

select * ,nullif (special , 0) as "it is what it is`" from products;
