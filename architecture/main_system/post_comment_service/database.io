/ Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs
// post: master-slave, 3 replication factor, sync-async, sharded by user_id
// comment: master-slave, 3 replication factor, sync-async, sharded by post_id
// media: master-slave, 3 replication factor, sync-async, sharded by id

Table post {
  id integer [primary key]
  user_id integer
  created_at timestamp
  description varchar
  media_id integer
  likes integer
  dislikes integer
  hashtags varchar
  watched_times integer
}

Table comment {
   id integer [primary key]
   user_id integer
   post_id integer
   description varchar
   created_at timestamp
}

Table media {
  id integer [primary key]
  file_url varchar
  created_at timestamp
  media_type int
}
