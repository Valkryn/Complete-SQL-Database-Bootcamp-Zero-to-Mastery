-- Who between the ages of 30 and 50 has an income less than 50 000?
-- (include 30 and 50 in the results)

SELECT age, firstname, lastname, income FROM CUSTOMERS
    WHERE age between 30 and 50
        and income < 50000;

-- What is the average income between the ages of 20 and 50? (Including 20 and 50)
SELECT round( AVG(age)) from customers
    WHERE age BETWEEN 20 AND 50;
