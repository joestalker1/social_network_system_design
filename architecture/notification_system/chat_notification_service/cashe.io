Table user_to_chat {
   user_id integer [primary key]
   message list[{chat_id1,message1,...},{chat_id2,message1,message2...}]
}