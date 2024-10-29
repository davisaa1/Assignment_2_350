/* Problem 4 Solution */
MATCH (p:Person)
WHERE p.name CONTAINS 'Hara'
RETURN p


/* Problem 5 Solution */
MATCH (p:Person {name: 'Kelley O Hara'})-[:IN_SQUAD]->(s:Squad)
RETURN COUNT(DISTINCT s) as squadCount


/* Problem 6 Solution */
MATCH (player:Person)-[:REPRESENTS]->(team:Team {name: "USA"})
MATCH (player)-[:SCORED_GOAL]->(match:Match)
RETURN DISTINCT player.name;

