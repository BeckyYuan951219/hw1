.print ""
.print "before modification"
.print "===================="
.print ""

SELECT ag.agent_name, ac.actor_name FROM representing r
JOIN agents ag on ag.id = r.agent_id
JOIN actors ac on ac.id = r.actor_id
ORDER BY ag.agent_name, ac.actor_name;

.print ""
.print "update Katie Holmes' agent from Ethan Cole to Linda Park"
.print "===================="
.print ""

UPDATE representing
SET agent_id = (SELECT id FROM agents WHERE agent_name = 'Linda Park')
WHERE actor_id = (SELECT id FROM actors WHERE actor_name = 'Katie Holmes');

.print ""
.print "after modification"
.print "===================="
.print ""

SELECT ag.agent_name, ac.actor_name FROM representing r
JOIN agents ag on ag.id = r.agent_id
JOIN actors ac on ac.id = r.actor_id
ORDER BY ag.agent_name, ac.actor_name;