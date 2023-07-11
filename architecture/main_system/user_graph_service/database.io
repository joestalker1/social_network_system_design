/ Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs
//Neo4j database

Table user_relationship {
   user_id1 integer [primary key]
   user_id2 integer [primnary key]
   relationship integer
}