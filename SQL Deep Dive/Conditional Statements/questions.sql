/**
* Database: Store
* Table: products
* Create a case statement that's named "price class" where if a product is over 20 dollars you show 'expensive'
* if it's between 10 and 20 you show 'average' 
* and of is lower than or equal to 10 you show 'cheap'.
*/
select * ,
    CASE 
        when price > 20 then 'Expensive'
        when price <= 10 then 'Cheap'
        else 'Average'
    END as "Price class"
    from products
order by price;
