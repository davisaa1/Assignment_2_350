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

/* Problem 7 Solution */
MATCH (c:Person)-[:COACH_FOR]->(s:Squad {id: 'USA in 2019'})
RETURN c.name

/* Problem 8 Solution */
MATCH (p:Person {name: 'Rose Lavelle'})-[:SCORED_GOAL]->(m:Match)
RETURN m

/* Problem 9 Solution */
MATCH (p:Person)-[:REPRESENTS]->(t:Team {name: 'USA'})
MATCH (p)-[:COACH_FOR]->(s:Squad)
RETURN DISTINCT p.name
