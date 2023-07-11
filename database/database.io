// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs
// user: master-slave replication,3 replication factor, sync-async, sharded by id
// follow: master-slave replication, 3 replication factor, sync-async, sharded by followee_id
// hobby: master-slave, 3 replication factor, sync-async, shared by user_id
// post: master-slave, 3 replication factor, sync-async, sharded by user_id
// comment: master-slave, 3 replication factor, sync-async, sharded by post_id
// chat: master-slave, 3 replication factor, sync-async, sharded by from_user,to_user
// message: master-slave, 3 replication factor, sync-async, sharded by chat_id
// media: master-slave, 3 replication factor, sync-async, sharded by id


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

Table hobby {
   id integer [primary key]
   user_id integer
   name varchar
}

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

Table media {
  id integer [primary key]
  file_url varchar
  created_at timestamp
  media_type int
}

Ref: chat.message_id < message.chat_id
Ref: hobby.user_id > user.id
Ref: user.media_id - media.id
Ref: follow.followee_id - user.id
Ref: follow.follower_id - user.id
Ref: comment.post_id > post.id
Ref: chat.from_user - user.id
Ref: chat.to_user - user.id
Ref: post.media_id - media.id
Ref: post.user_id > user.id