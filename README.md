  ##Design of a social network 
https://balun.courses/courses/system_design
  
### Functional requirements:
- User is able to add/remove friends
- User is able to like/dislike other user posts
- User is able to publish new posts
- User is able to comment friend's posts.
- User is able to search posts by keywords.
- User is able to browse the timeline with recent friend's posts.
- Post contains only text.

###Non functional requirements
- DAU 100 000 000 unique users
- User publishes 10 new posts per day
- User has 30 friends
- Post is about 2000 chars long
- User reads friends posts 30 times per day
- Availability is 99.95%
- If user publishes new post,it may be shown in 1 seconds for user
- User see his friend's post in 5 seconds
- The system can't lose any user information
- The system favors availability over consistency

### Capacity estimation and constraints
- Need 3650TB per 5 years to store all user posts
- Replication factor is 3, it needs to store 10950TB
- RPS (write) is 11574 to publish new posts
- RPS (read) is 34722
- Writing Bandwidth is 23Mb/sec
- Reading bandwidth is 69Mb/sec
- Need 3 shards.

