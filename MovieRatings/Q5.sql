/*
Write a query to return the ratings data in a more readable format: reviewer name, movie title, stars, and ratingDate. Also, sort the data, first by reviewer name, then by movie title, and lastly by number of stars. 
*/

SELECT Reviewer.name AS ReviewerName,
       Movie.title AS MovieTitle,
       Rating.stars AS stars,
       ratingDate
FROM (Movie
      INNER JOIN Rating USING (mID))
INNER JOIN Reviewer USING(rID)
ORDER BY ReviewerName,
         MovieTitle,
         stars,
         ratingDate;
