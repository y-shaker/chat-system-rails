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






This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
