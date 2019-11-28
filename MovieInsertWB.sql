INSERT INTO actor (act_id, act_fname, act_lname, act_gender) 
VALUES (01, "Tom", "Cruise", 'M'), (02, "Vin", "Diesel", 'M'), (03, "Sophie", "Burr", 'F');

insert into director values (
212, 'Frank', 'Bush');
insert into director values (
213, 'Brad', 'Tom');
INSERT INTO director VALUES (214, "Burr", "Sophie");

INSERT INTO genres (gen_id, gen_title) VALUES (01, "Sci-fi"), (02, "Romance"), (03, "Drama");

INSERT INTO mov_genres (mov_id, gen_id) VALUES (01, 01), (02, 02), (03, 03);

INSERT INTO movie (mov_id, mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country)
VALUES (01, "Minority Report", 1999, 02-45, "English", 20/10/1999, "Naija"), 
(02, "Majority Report", 1999, 02-15, "English", 02/10/1999, "Naija"),
(03, "Fast not Furious", 1999, 01-05, "English", 05/01/1999, "Naija");

INSERT INTO movie_cast2 (act_id, mov_id, mov_role) 
VALUES (01, 01, "Lead actor"), (02, 02, "Gardener"), (03, 03, "Car washer");

INSERT INTO movie_direction2 (dir_id, mov_id) VALUES (01, 01), (02, 02), (03, 03);

INSERT INTO rating (mov_id, rev_id, rev_stars, num_o_ratings)
VALUES (01, 01, 3.4, 3), (02, 02,  4.5, 4), (03, 03, 3.0, 5);

INSERT INTO reviewer (rev_id, rev_name) VALUES (01, "Jack"), (02, "Mathew"), (03, "Brown");