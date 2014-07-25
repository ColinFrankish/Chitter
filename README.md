The purpose of this is to create a twitter clone, that will allow users to post messages to a public stream.

Users must sign up to use the service. 

Users must log in to use chitter.

Users must be able to log out so no one can use their account (password protected).

Users must be able to post messages on chitter, messages an be viewed when not logged in. 

All peeps ('tweets') should be seen in a chronological order. 

So that should be simple..........

This includes virtually no styling, that is not the purpose of this project. 
Styling may be added later for practise, this is about functionality. 

Sinatra used, and also postgres as intro to databases. 

Gems used:
gem 'sinatra'
gem 'data_mapper'
gem 'dm-postgres-adapter'
gem 'dm-core'
gem 'dm-timestamps'
gem 'bcrypt-ruby'

group :development, :test do 
  gem "rspec"
  gem 'database_cleaner'
  gem 'capybara'
end

`````
run using 'shotgun controller.rb' from the terminal, in localhost 9393. 
`````

------------------------
Further work could be done on this project.

1, create routes between users sign up and main chitter homepage.
2, define what signed in users can do vs unsigned in users ?
3, styling
