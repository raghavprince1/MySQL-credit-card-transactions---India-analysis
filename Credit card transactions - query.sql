-- Clean dataset.

SELECT * FROM `credit cards`.transactions;


-- Q1. What are the count of transactions and total amount recieved from each city?

SELECT City, 
COUNT(Amount) AS `total transactions`,
SUM(Amount) AS `total amount`
FROM transactions
GROUP BY City;


-- Q2. What are the count of transactions and total amount of each year?

SELECT YEAR(Date) AS `year`,
COUNT(Amount) AS `total transactions`,
SUM(Amount) AS `total amount`
FROM transactions
GROUP BY YEAR(Date);


-- Q3. How many customers do we have of each gender?

SELECT Gender, COUNT(*) AS `customer count`
FROM transactions
GROUP BY Gender;


-- Q4. What are the count of transactions and total amount according to customer's expense type?

SELECT ExpType, COUNT(*) AS `total transactions`,
SUM(Amount) AS `total amount`
FROM transactions
GROUP BY ExpType;


-- Q5. What are the total transactions and total amount of each type of card?

SELECT CardType, COUNT(*) AS `total transactions`,
SUM(Amount) AS `total amount`
FROM transactions
GROUP BY CardType;


-- Q6. Name top 10 cities with highest amount.

SELECT City, 
SUM(Amount) AS `total amount`
FROM transactions
GROUP BY City
ORDER BY `total amount`DESC
LIMIT 10;


-- Q7. Name 10 cities with lowest amount.

SELECT City, 
SUM(Amount) AS `total amount`
FROM transactions
GROUP BY City
ORDER BY `total amount`ASC
LIMIT 10;


-- Q8. what are the Top 10 transactions?

SELECT *
FROM transactions
ORDER BY Amount DESC
LIMIT 10;


-- Q9. what are the 10 lowest transactions?

SELECT *
FROM transactions
ORDER BY Amount ASC
LIMIT 10;

-- Q10. Show all the transactions of people who holds a Platinum card in delhi in 2014.

SELECT *
FROM transactions
WHERE YEAR(date) = 2014
AND CITY = 'Delhi, India'
AND CardType = 'Platinum' ;