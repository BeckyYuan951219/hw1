INSERT INTO studios (studio_name)
VALUES
  ('Warner Bros.'),
  ('Universal Pictures'),
  ('Paramount Pictures');

INSERT INTO movies (title, year_released, MAPP_rating, studio_id)
VALUES
  ('Batman Begins', '2005', 'PG-13', (SELECT id FROM studios WHERE studio_name = 'Warner Bros.')),
  ('The Dark Knight', '2008', 'PG-13', (SELECT id FROM studios WHERE studio_name = 'Warner Bros.')),
  ('The Dark Knight Rises', '2012', 'PG-13', (SELECT id FROM studios WHERE studio_name = 'Warner Bros.'));

INSERT INTO agents (agent_name)
VALUES
  ('Linda Park'),
  ('Marcus Hill'),
  ('Sofia Ramirez'),
  ('Ethan Cole'),
  ('Grace Nakamura');

INSERT INTO actors (actor_name)
VALUES
  ('Christian Bale'),
  ('Michael Caine'),
  ('Liam Neeson'),
  ('Katie Holmes'),
  ('Gary Oldman'),
  ('Heath Ledger'),
  ('Aaron Eckhart'),
  ('Maggie Gyllenhaal'),
  ('Tom Hardy'),
  ('Joseph Gordon-Levitt'),
  ('Anne Hathaway');  

  INSERT INTO castings (movie_id, actor_id, character_name)
VALUES
  ((SELECT id FROM movies WHERE title = 'Batman Begins'),
   (SELECT id FROM actors WHERE actor_name = 'Christian Bale'),
   'Bruce Wayne'),

  ((SELECT id FROM movies WHERE title = 'Batman Begins'),
   (SELECT id FROM actors WHERE actor_name = 'Michael Caine'),
   'Alfred'),

  ((SELECT id FROM movies WHERE title = 'Batman Begins'),
   (SELECT id FROM actors WHERE actor_name = 'Liam Neeson'),
   'Ra''s Al Ghul'),

  ((SELECT id FROM movies WHERE title = 'Batman Begins'),
   (SELECT id FROM actors WHERE actor_name = 'Katie Holmes'),
   'Rachel Dawes'),

  ((SELECT id FROM movies WHERE title = 'Batman Begins'),
   (SELECT id FROM actors WHERE actor_name = 'Gary Oldman'),
   'Commissioner Gordon'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight'),
   (SELECT id FROM actors WHERE actor_name = 'Christian Bale'),
   'Bruce Wayne'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight'),
   (SELECT id FROM actors WHERE actor_name = 'Heath Ledger'),
   'Joker'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight'),
   (SELECT id FROM actors WHERE actor_name = 'Aaron Eckhart'),
   'Harvey Dent'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight'),
   (SELECT id FROM actors WHERE actor_name = 'Michael Caine'),
   'Alfred'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight'),
   (SELECT id FROM actors WHERE actor_name = 'Maggie Gyllenhaal'),
   'Rachel Dawes'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight Rises'),
   (SELECT id FROM actors WHERE actor_name = 'Christian Bale'),
   'Bruce Wayne'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight Rises'),
   (SELECT id FROM actors WHERE actor_name = 'Gary Oldman'),
   'Commissioner Gordon'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight Rises'),
   (SELECT id FROM actors WHERE actor_name = 'Tom Hardy'),
   'Bane'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight Rises'),
   (SELECT id FROM actors WHERE actor_name = 'Joseph Gordon-Levitt'),
   'John Blake'),

  ((SELECT id FROM movies WHERE title = 'The Dark Knight Rises'),
   (SELECT id FROM actors WHERE actor_name = 'Anne Hathaway'),
   'Selina Kyle');

INSERT INTO representing (agent_id, actor_id)
VALUES
  (1, (SELECT id FROM actors WHERE actor_name = 'Christian Bale')),
  (2, (SELECT id FROM actors WHERE actor_name = 'Michael Caine')),
  (3, (SELECT id FROM actors WHERE actor_name = 'Liam Neeson')),
  (4, (SELECT id FROM actors WHERE actor_name = 'Katie Holmes')),
  (5, (SELECT id FROM actors WHERE actor_name = 'Gary Oldman')),
  (1, (SELECT id FROM actors WHERE actor_name = 'Heath Ledger')),
  (2, (SELECT id FROM actors WHERE actor_name = 'Aaron Eckhart')),
  (3, (SELECT id FROM actors WHERE actor_name = 'Maggie Gyllenhaal')),
  (4, (SELECT id FROM actors WHERE actor_name = 'Tom Hardy')),
  (5, (SELECT id FROM actors WHERE actor_name = 'Joseph Gordon-Levitt')),
  (1, (SELECT id FROM actors WHERE actor_name = 'Anne Hathaway'));

