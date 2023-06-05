require 'sinatra/activerecord'

ActiveRecord::Base.logger = Logger.new(STDOUT)

configure :development do
  ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'db/development.sqlite3'
  )
end

configure :test do
  ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'db/test.sqlite3'
  )
end

# configure :production do
#   # Set up your production database configuration
# end
