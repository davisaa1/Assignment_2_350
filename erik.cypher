## 1. Show the name of each tournament
```cypher
MATCH (t:Tournament)
RETURN t.name
```

## 2. Show the name of each player who has represented the USA
```cypher
MATCH (p:Person)-[:REPRESENTS]->(t:Team {name: 'USA'})
RETURN DISTINCT p.name
```

## 3. Show the date of birth of Lauren Holiday
```cypher
MATCH (p:Person {name: 'Lauren Holiday'})
RETURN p.dob
``