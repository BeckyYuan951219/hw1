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

INSERT INTO actors (actor_name, agent_id)
VALUES
  ('Christian Bale', 1),
  ('Michael Caine', 2),
  ('Liam Neeson', 3),
  ('Katie Holmes', 4),
  ('Gary Oldman', 5),
  ('Heath Ledger', 1),
  ('Aaron Eckhart', 2),
  ('Maggie Gyllenhaal', 3),
  ('Tom Hardy', 4),
  ('Joseph Gordon-Levitt', 5),
  ('Anne Hathaway', 1);  

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
SELECT agent_id, id
FROM actors
WHERE agent_id IS NOT NULL;
