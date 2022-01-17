Create database data_analysis;

USE data_analysis

CREATE TABLE consumer_details(
ID INT,
NAME VARCHAR (25) NOT NULL,
LOCALITY VARCHAR (25) NOT NULL,
ORDER_DATE DATE,
AMOUNT_SPEND INT NOT NULL,
INDUSTRY VARCHAR (30) NOT NULL,
 PRIMARY KEY(ID) );

SELECT * FROM consumer_details;
INSERT INTO consumer_details 
VALUES 
(1, 'Sonu', 'secendrabad', '2011-06-17', 6080, 'Banking'),
(2, 'Vijay', 'Vijay Nagar', '2011-06-28', 7050, 'Teaching'),
(3, 'Surya', 'Surya Nagar', '2012-06-14', 4070, 'Aviation'),
(4, 'Banu', 'Banu Nagar', '2010-01-12', 8080, 'Teaching'),
(5, 'Gopi', 'Gully Nagar', '2011-06-19', 9620, 'Banking'),
(6, 'Srinu', 'Srikakulam', '2012-06-07', 4076, 'Aviation'),
(7, 'Konda', 'Konda Nagar', '2011-06-18', 4673, 'Hotel'),
(8, 'Raj', 'Raj Nagar', '2010-02-20', 5738, 'Gaming'),
(9, 'Gopal', 'Gopal Nagar', '2010-03-13', 6080, 'Hotel'),
(10, 'Shivam', 'Shivam Nagar', '2010-01-18', 9764, 'Tech'),
(11, 'Banu', 'Banu Nagar', '2012-06-23', 4758, 'Defence'),
(12, 'Chotu', 'Chotu Nagar', '2011-06-22', 9048, 'Tech');

## Basic Sql Data Analysis

SELECT count(*) FROM consumer_details;

SELECT distinct INDUSTRY FROM consumer_details; 

SELECT count(distinct INDUSTRY) FROM consumer_details; 

### USING AGGREGATION FUNCTION
 SELECT SUM(AMOUNT_SPEND) AS SUM_ALL FROM consumer_detailS;

## Calculating AVG
SELECT avg(AMOUNT_SPEND) AS TOTAL_AVG FROM consumer_details;

## Calculating Standard Deviation 
SELECT STDDEV(AMOUNT_SPEND) AS TOTAL_STDDEV FROM consumer_details;

### finding the extreme value 
SELECT MAX(AMOUNT_SPEND) AS MAX_AMOUNT FROM consumer_details;

#### Finding min value in the data
SELECT MIN(AMOUNT_SPEND) AS MIN_VALUE FROM consumer_details; 


###SLICING THE DATA  (finding the customer comming from locality espically from gopal nagar,raj nagar, chotu nagr)
SELECT NAME FROM consumer_details
WHERE 
LOCALITY IN ('Gopal Nagar', 'Raj Nagar', 'Chotu Nagar');

#####(finding the customer comming from locality espically from gopal nagar,raj nagar, chotu nagr spending amount is more than 8000)
SELECT NAME FROM consumer_details
WHERE 
LOCALITY IN ('Gopal Nagar', 'Raj Nagar', 'Chotu Nagar') and AMOUNT_SPEND >= 8000;


SELECT NAME FROM consumer_details
WHERE AMOUNT_SPEND BETWEEN 3000 AND 5000;


### LIMITING THE DATA 

SELECT * FROM consumer_details LIMIT 3;

###USING OFFSET  if we want to get 6th row only then see the bellow query 
SELECT * FROM consumer_details LIMIT 1 OFFSET 5;


### sorting data 

SELECT * FROM consumer_details 
ORDER BY NAME ;

SELECT * FROM consumer_details 
ORDER BY AMOUNT_SPEND;



SELECT * FROM consumer_details 
ORDER BY AMOUNT_SPEND DESC;


### FILTERING PATTERN 

SELECT NAME FROM consumer_details WHERE INDUSTRY LIKE '%ing';

SELECT * FROM consumer_details WHERE INDUSTRY LIKE '%ing';

### grouping amd filtering the data 
SELECT COUNT(*) , INDUSTRY FROM consumer_details GROUP BY INDUSTRY;

SELECT COUNT(*) , ORDER_DATE, NAME,  INDUSTRY FROM consumer_details GROUP BY INDUSTRY ;


SELECT SUM(AMOUNT_SPEND) AS TOTAL_SPEND , NAME, INDUSTRY FROM consumer_details GROUP BY INDUSTRY;

## USING HAVING 
SELECT SUM(AMOUNT_SPEND) AS TOTAL_SPEND , NAME, INDUSTRY FROM consumer_details GROUP BY INDUSTRY HAVING TOTAL_SPEND > 10000;

#USING ORDER BY 
SELECT SUM(AMOUNT_SPEND) AS TOTAL_SPEND , NAME, INDUSTRY
 FROM consumer_details GROUP BY INDUSTRY 
 HAVING TOTAL_SPEND > 10000 
 ORDER BY TOTAL_SPEND DESC;
















