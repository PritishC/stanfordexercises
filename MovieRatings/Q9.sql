/*
Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after. Don't just calculate the overall average rating before and after 1980.) 
*/

SELECT avg(bef-aft)
FROM
  (SELECT aft
   FROM
     (SELECT avg(stars) AS aft,
             YEAR
      FROM Movie
      JOIN Rating using(mID)
      GROUP BY title) T
   WHERE YEAR > 1980) T1,
  (SELECT bef
   FROM
     (SELECT avg(stars) AS bef,
             YEAR
      FROM Movie
      JOIN Rating using(mID)
      GROUP BY title) T
   WHERE YEAR < 1980) T2;


