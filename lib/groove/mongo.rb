require 'mongo'

include Mongo

DB = Connection.new(ENV['DATABASE_URL'] || 'localhost').db(ENV['DATABASE'])
if ENV['DATABASE_USER'] && ENV['DATABASE_PASSWORD']
  DB.authenticate(ENV['DATABASE_USER'], ENV['DATABASE_PASSWORD'])
end
