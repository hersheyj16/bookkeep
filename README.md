# README

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

# Notes
Converting the Gemfile in Listing 1.4 to use exact gem versions results in the code shown in Listing 1.5.
Something for heroku dev

```
#To launch a console
rails console

#To seed a data
rake db:setup
rake db:seed

#rake export:seeds_format > db/seeds.rb
```
##Heroku commands:
```clickhouse
$ heroku run rails db:migrate
-- rake db:seed
```

##Rake commands
```ruby
* rake export:seeds_format > db/seeds.rb
rails generate scaffold Bookmark note:text book_id:integer entry_date:date page:integer progess:integer
rails db:migrate
```


## Scafolding

```clickhouse

bundle install --without production

rails generate scaffold Book title:string author:string desc:string
rails db:migrate

#forgot to include a link
#rails g migration add_descp_to_books desc:string
#but this didn't really give me the auto generated things I wanted to look at
```
