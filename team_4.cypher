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