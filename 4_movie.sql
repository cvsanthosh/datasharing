/* We are selecting year, Genre and the movie rating in the final dataset as required. */

drop table `XX.YY.delme_final_output1`  ;

/* Join Movies with ratings to get ratings details */

create table `XX.YY.delme_final_output1`  as 
SELECT
DER1.year
,DER1.genre
,sum(RTG.rating) as sum_ratings
from
(
/*Genre is stored as pipe separated values inside the same column. Using UNNEST to convert them onto separate rows with the same movie id */
SELECT 
id, genre,year
FROM `XX.YY.delme_movies` 
,UNNEST (SPLIT(catg,"|")) AS genre
/* We want movies only from the last decade*/
where year between 2001 and 2010
)DER1
LEFT OUTER JOIN 
`XX.YY.delme_ratings` RTG
ON
DER1.id = RTG.movie_id
group by 
DER1.year
,DER1.genre
;