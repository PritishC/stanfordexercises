/*
Q2. Find all years that have a movie that received a rating of 4 or 5, and sort them in increasing order. 
*/

SELECT DISTINCT YEAR
FROM Movie
INNER JOIN Rating using(mID)
WHERE stars = '4'
  OR stars = '5'
ORDER BY YEAR;


