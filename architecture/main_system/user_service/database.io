// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs
// user: master-slave replication,3 replication factor, sync-async, sharded by id
// follow: master-slave replication, 3 replication factor, sync-async, sharded by followee_id
// media: master-slave, 3 replication factor, sync-async, sharded by id
// hobby: master-slave, 3 replication factor, sync-async, shared by user_id

Table user {
  id integer [primary key]
  name varchar
  media_id integer
  firstname varchar
  lastname varchar
  created_at timestamp
  city varchar
}

Table follow {
  followee_id integer
  follower_id integer
  follow_type int
}

Table media {
  id integer [primary key]
  file_url varchar
  created_at timestamp
  media_type int
}

Table hobby {
   id integer [primary key]
   user_id integer
   name varchar
}
