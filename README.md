Groove
======

Generator to create a Sinatra, MongoDB, Effigy, and Hoptoad web app.

Usage
-----

groove weekapaug

    create  weekapaug/.gems
    create  weekapaug/config.ru
    create  weekapaug/app.rb
    create  weekapaug/templates/index.html
    create  weekapaug/views/index.rb

Example deploy
--------------

Using Heroku and MongoHQ.

heroku config

    MONGO_DB       => mongodatabasename
    MONGO_HOST     => db.mongohq.com
    MONGO_USER     => user
    MONGO_PASSWORD => password
    HOPTOAD        => apikey123
