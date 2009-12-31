Groove
======

A web application stack composed of Sinatra, MongoDB, Effigy, and Hoptoad.

Usage
-----

thor weekapaug

vim templates/index.html

    <!DOCTYPE html>
    <html>
      <head>
        <title>weekapaug groove</title>
      </head>
      <body>
        <h1>sharing in the weekapaug groove</h1>
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

