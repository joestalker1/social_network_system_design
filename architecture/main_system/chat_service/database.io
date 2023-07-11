// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs
// chat: master-slave, 3 replication factor, sync-async, sharded by from_user,to_user
// message: master-slave, 3 replication factor, sync-async, sharded by chat_id


Table chat {
   id integer [primary key]
   from_user integer
   to_user integer
   message_id integer
   created_at timestamp
}

Table message {
   id integer [primary key]
   chat_id integer
   text varchar
   read boolean
}
