/*
For each movie, return the title and the 'rating spread', that is, the difference between highest and lowest ratings given to that movie. Sort by rating spread from highest to lowest, then by movie title. 
*/

SELECT title,
       mx-mn AS res
FROM
  (SELECT title,
          max(stars) AS mx,
          min(stars) AS mn
   FROM Movie
   JOIN Rating using(mID)
   GROUP BY title) T
ORDER BY res DESC,
         title;


