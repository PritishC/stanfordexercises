/*
Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date. 
*/

SELECT name
FROM Reviewer
INNER JOIN Rating using(rID)
WHERE ratingDate IS NULL;


