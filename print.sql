-- Turns column mode on but headers off
.mode column
.headers off
-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

SELECT m.title, m.year_released, m.MPAA_rating, s.studio_name
FROM movies m
LEFT JOIN studios s
ON m.studio_id = s.id;

.print ""
.print "Top Cast"
.print "========"
.print ""

SELECT m.title, a.actor_name, c.character_name FROM castings c 
JOIN movies m ON c.movie_id = m.id
JOIN actors a ON c.actor_id = a.id
ORDER BY m.title, a.actor_name;

-- Prints a header for the agent's list of represented actors
.print ""
.print "Represented by agent"
.print "===================="
.print ""

SELECT ac.actor_name From representing r
JOIN actors ac ON r.actor_id = ac.id
JOIN agents ag ON r.agent_id = ag.id
WHERE ag.agent_name = "Linda Park";