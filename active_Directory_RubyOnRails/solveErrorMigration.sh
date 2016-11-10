rm -f db/*.sqlite3
rake db:create RAILS_ENV=development
rake db:migrate
rails s -e development
