# README
# Notes
```
#To launch a console
rails console

#To seed a data
rake db:setup
rake db:seed

#rake export:seeds_format > db/seeds.rb
```
##Heroku commands:
```ruby
#First time running something
bundle install --without production
```
```clickhouse
$ heroku run rails db:migrate
-- rails db:migrate
-- rake db:seed
```

##Rake commands
```ruby
# in the name space of export
* rake export:seeds_format > db/seeds.rb
* http://www.xyzpub.com/en/ruby-on-rails/3.2/seed_rb.html


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

## Twitter
```ruby
#The rails cast
http://railscasts.com/episodes/328-twitter-bootstrap-basics?autoplay=true

#The github:
https://github.com/seyhunak/twitter-bootstrap-rails 
```


## Useful resources


