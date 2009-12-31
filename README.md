Groove
======

A web application stack composed of Sinatra, MongoDB, Effigy, and Hoptoad.

Usage
-----

vim config.ru

    require 'groove'
    Groove.config = { :db          => ENV['DATABASE']     || 'weekapaug',
                      :db_url      => ENV['DATABASE_URL'] || 'localhost',
                      :db_user     => ENV['DATABASE_USER'],
                      :db_password => ENV['DATABASE_PASSWORD'],
                      :hoptoad     => ENV['HOPTOAD'] }
    require 'app'
    run Sinatra::Application

vim app.rb

    get '/' do
      effigy :weekapaug
    end

vim templates/weekapaug.html

    <!DOCTYPE html>
    <html>
      <head>
        <title>weekapaug groove</title>
      </head>
      <body>
        <h1>sharing in the weekapaug groove</h1>
      </body>
    </html>

vim views/weekapaug.rb

    class Weekapaug < Effigy::View
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
    RACK_ENV          => production

