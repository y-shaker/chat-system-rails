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

2. Create database.yml file

  Copy the sample database.yml file and edit the database configuration as required.
 ```
 cp config/database.yml.sample config/database.yml
 ```
3. Create and setup the database

 Run the following commands to create and setup the database.

 ```
 bundle exec rake db:create
 bundle exec rake db:setup
 ```
4. Start Rails Server
 
 ```
 bundle exec rails s
 ```

 You can test backend now with URL http://localhost:3000

 ## REST API
  The REST API to the be able to use the system.

### Get a list of all Application
```
GET http://localhost:3000/applications
```

### Create an Application
Adding in the body the name of the application
```
POST http://localhost:3000/applications
```

### Get a list of all chats in this application
```
GET http://localhost:3000/applications/:token/chats
```

### Creating a Chat
Adding in the body the clients id of the chat
```
POST http://localhost:3000/applications/:token/chats
```

### Get a list of all messages in this chat
also able to search through the messages using ransack using one of its attributes like the body or client that send the message
```
GET http://localhost:3000/applications/:token/chats/:chat_id/messages
```

### Create a message
Adding in the body the user id of the sender and the message itself
```
POST http://localhost:3000/applications/:token/chats/:chat_id/messages
```







