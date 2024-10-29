## 4. Show the data of each person whose name contains 'Hara'
```cypher
MATCH (p:Person)
WHERE p.name CONTAINS 'Hara'
RETURN p
```

## 5. Show the number of squads Kelley O'Hara was in
```cypher
MATCH (p:Person {name: 'Kelley O Hara'})-[:IN_SQUAD]->(s:Squad)
RETURN COUNT(DISTINCT s) as squadCount
```

## 6. Show the name of each USA player who has scored a goal in tournaments
```cypher
MATCH (player:Person)-[:REPRESENTS]->(team:Team {name: "USA"})
MATCH (player)-[:SCORED_GOAL]->(match:Match)
RETURN DISTINCT player.name;

