/*
For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title. 
*/
SELECT title,
       stars
FROM Movie
JOIN Rating using(mID)
WHERE stars IN
    (SELECT max(stars)
     FROM Rating
     WHERE mID = Movie.mID
       AND exists
         (SELECT mID
          FROM Rating
          WHERE mID = Movie.mID))
GROUP BY title;


