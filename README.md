# Chat_System_Backend_Challenge

## Introduction
This was my first project using RubyonRails. It consisted of a chat system to enable users send messages on a chat.

## Technologies
* Rails 7
* Ruby 2.7
* Sqlite

## Launch

1. Clone repository
  ```
  git clone https://github.com/youssef-shaker/chat-system-rails.git
  ```


2. Create the database

 Run the following command to create the database.

 ```
 bundle exec rake db:create
 ```
3. Installing gems

```
bundle install
```

4. Start Rails Server
 
 ```
 bundle exec rails s
 ```

 You can test backend now with URL http://localhost:3000

 ## REST API
  The REST API to the be able to use the system.

### Create an Application
Adding in the body the name of the application

#### Example:
```
{ "name" : "my_application"}

POST http://localhost:3000/applications
```

### Get a list of all Application
```
GET http://localhost:3000/applications
```

### Create a user
Adding a name and chat_id

#### Example:
```
{ "name" : "your name" , "chat_id" : :id}

POST http://localhost:3000/clients
```

### Get a list of all users
```
GET http://localhost:3000/clients
```

### Creating a Chat
Adding in the body the clients id of the chat
#### Example:
```
{ "client_id" : :id , "client_2_id" : :id}
POST http://localhost:3000/applications/:token/chats
```

### Get a list of all chats in this application
```
GET http://localhost:3000/applications/:token/chats
```

### Delete a chat
```
DELETE http://localhost:3000/applications/:token/chats/:id
```

### Create a message
Adding in the body of the message itself
#### Example:
```
{ "body": "the message itself"}
POST http://localhost:3000/applications/:token/chats/:chat_id/messages/:client_id
```

### Delete a message
```
DELETE http://localhost:3000/applications/:token/chats/:chat_id/messages/:id
```

### Get a list of all messages in this chat
also able to search through the messages using ransack using one of its attributes like the body or client that send the message
```
GET http://localhost:3000/applications/:token/chats/:chat_id/messages

GET http://localhost:3000/applications/:token/chats/:chat_id/messages?q[body_cont]=texttobesearchedhere
```









