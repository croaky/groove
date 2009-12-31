Groove
======

Generator to create a Sinatra, MongoDB, Effigy, and Hoptoad web app.

Usage
-----

groove weekapaug

    create  weekapaug/config.ru
    create  weekapaug/app.rb
    create  weekapaug/templates/index.html
    create  weekapaug/views/index.rb

cd weekapaug

cat config.ru

    require 'groove'
    Groove.config = { :db          => ENV['DATABASE']     || 'weekapaug',
                      :db_url      => ENV['DATABASE_URL'] || 'localhost',
                      :db_user     => ENV['DATABASE_USER'],
                      :db_password => ENV['DATABASE_PASSWORD'],
                      :hoptoad     => ENV['HOPTOAD'] }
    require 'app'
    run Sinatra::Application

cat app.rb

    get '/' do
      effigy :index
    end

cat templates/index.html

    <!DOCTYPE html>
    <html>
      <head>
        <title>weekapaug</title>
      </head>
      <body>
        <h1>weekapaug</h1>
      </body>
    </html>

vim views/index.rb

    class IndexView < Effigy::View
      def transform
        text('h1', DB['grooves'].find(:name => 'weekapaug'))
      end
    end

Designed for Heroku and MongoHQ
-------------------------------

heroku config

    DATABASE          => mongodatabasename
    DATABASE_URL      => amazon.mongohq.com
    DATABASE_USER     => user
    DATABASE_PASSWORD => password
    HOPTOAD           => apikey123
