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

vim templates/index.html

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
