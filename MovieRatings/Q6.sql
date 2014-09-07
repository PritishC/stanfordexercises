/*
For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie. 
*/

SELECT name,
       title
FROM Movie
JOIN (Reviewer
      JOIN
        (SELECT R1.rID,
                R1.mID
         FROM Rating R1
         JOIN Rating R2 using(rID)
         WHERE R1.mID = R2.mID
           AND R1.stars < R2.stars
           AND R1.ratingDate < R2.ratingDate) X using(rID)) using(mID);


