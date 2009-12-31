require 'mongo'

include Mongo

DB = Connection.new(Groove.config[:db_url]).db(Groove.config[:db])
if Groove.config[:db_user] && Groove.config[:db_password]
  DB.authenticate(Groove.config[:db_user], Groove.config[:db_password])
end
