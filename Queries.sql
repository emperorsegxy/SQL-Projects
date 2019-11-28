#Write a query in SQL to find the name and year of the movies.
SELECT mov_title, mov_year
FROM movie;

#Write a query in SQL to find the year when the movie American Beauty released.
SELECT mov_year
FROM movie
WHERE mov_title = 'American Beauty';

#Write a query in SQL to find the movie which was released in the year 1999
SELECT mov_title
FROM movie
WHERE mov_year = 1999;

#Write a query in SQL to find the movies which was released before 1998
SELECT mov_title 
FROM movie
WHERE mov_year = 1998;

#Write a query in SQL to find the movie which was released in the year 1999
SELECT mov_title
FROM movie
WHERE mov_year = 1999;

#Write a query in SQL to return the name of all reviewers and name of movies together in a single list.
SELECT rev_name, mov_title
FROM reviewer, movie;

#Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
SELECT rev_name
FROM reviewer
WHERE rev_id IN 
	(SELECT rev_id
    FROM rating
    WHERE num_o_ratings >= 7);

#Write a query in SQL to find the titles of all movies that have no ratings.
SELECT mov_title
FROM movie
WHERE mov_id IN
	(SELECT mov_id
    FROM rating
    WHERE num_o_ratings = 0);

#Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value
SELECT rev_name
FROM reviewer
WHERE rev_id IN
	(SELECT rev_id
    FROM rating
    WHERE num_o_ratings = NULL);

#Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'.
SELECT dir_fname AS firstName, dir_lname AS lastName
FROM  movie_direction, director, movie
WHERE movie.mov_id = movie_direction.mov_id
AND director.dir_id = movie_direction.dir_id
AND movie.mov_title = "Eyes wide shut";