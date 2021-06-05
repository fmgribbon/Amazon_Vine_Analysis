-- Delete Rows with vine is equal to nulls
DELETE FROM vine_table
where vine isnull;

-- Total Votes count greater than or equal to zero 
DROP TABLE IF EXISTS totalvotesgeq20_table;
CREATE TABLE totalvotesgeq20_table AS
    SELECT * 
     FROM vine_table
	 where total_votes >= 20;
SELECT * FROM  totalvotesgeq20_table LIMIT 20;	

-- Ratio of Helpful Vote vs Total Votes greater than or equal to 0.5
DROP TABLE IF EXISTS percent50ge_table;
CREATE TABLE percent50ge_table AS
	SELECT * 			  
     FROM totalvotesgeq20_table
	 WHERE CAST(helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;
	 
SELECT * FROM percent50ge_table LIMIT 20;	 

-- Vine Program (Paid) and Ratio of Helpful Vote vs Total Votes greater than or equal to 0.5
DROP TABLE IF EXISTS vine_y_table;
CREATE TABLE vine_y_table AS
  SELECT *
  FROM percent50ge_table
  WHERE vine = 'Y';
 
 SELECT * FROM vine_y_table limit 20;

-- Vine Program (Unpaid) and Ratio of Helpful Vote vs Total Votes greater than or equal to 0.5

DROP TABLE IF EXISTS vine_n_table;
CREATE TABLE vine_n_table AS
  SELECT *
  FROM percent50ge_table
  WHERE vine = 'N';
 
SELECT * FROM vine_n_table limit 20


-- Total Reviews with helpful ration greater than or equal to 0.50 
SELECT COUNT(review_id) AS Total_Reviews 
FROM percent50ge_table;

-- Total Five Star Reviews
SELECT COUNT(review_id) AS Total_Five_star_reviews
FROM percent50ge_table
WHERE star_rating = '5';

--- Ratio of paid and unpaid  five_star reviews vs total_reviews
SELECT vine AS Vine, count(star_rating),  
    (count(star_rating) :: FLOAT / (select count(review_id) from percent50ge_table)) AS Percentage 
FROM percent50ge_table
GROUP BY vine, star_rating
HAVING star_rating = 5;

