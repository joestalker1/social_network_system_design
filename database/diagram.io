// Use DBML to define your database structure
// Docs: https://dbml.dbdiagram.io/docs

Table follows {
  following_user_id integer
  followed_user_id integer
  created_at timestamp
}

Table users {
  id integer [primary key]
  login varch
  status integer
  last_login timestamp
  firstname varchar
  created_at timestamp
  profile_id integer
}

Table profiles {
   id integer [primary key]
   user_id integer
   address_id integer
   habbits varchar
   sex varchar
   age integer
   email varch
   phone varch
   followers integer
   friends integer
}

Table address {
   id integer [primary key]
   city varchar
   state varch
   streetAddress varch
}

Table posts {
  id integer [primary key]
  title varchar
  body text [note: 'Content of the post']
  user_id integer
  status varchar
  created_at timestamp
  likes integer
  dislikes integer
}

Table comments {
   id integer [primary key]
   text varchar
   post_id integer
}

Table messages {
   id integer [primary key]
   user_id integer
   to_user_id integer
   created_at timestamp
   text string
   read integer
   delivered integer
}

Table media {
  id integer [primary key]
  name varchar
  type varchar
  link varchar
  post_id integer
}

Table post_hashtag {
   post_id integer
   hashtag_id integer
}

Table hashtags {
   id integer [primary key]
   name varchar
}
Table relationships {
   user_id1 integer
   user_id2 integer
   type integer
}

Ref: comments.post_id > posts.id
Ref: media.post_id < posts.id
Ref: posts.id > post_hashtag.post_id
Ref: hashtags.id > post_hashtag.hashtag_id
Ref: profiles.address_id > address.id

Ref: posts.user_id > users.id // many-to-one

Ref: users.id < follows.following_user_id

Ref: users.id < follows.followed_user_id