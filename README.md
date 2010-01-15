Groove
======

Generator to create a web application stack of
Sinatra, MongoDB, jQuery, HTML5, Effigy, and Hoptoad web app.

Usage
-----

groove weekapaug

    create  weekapaug/Gemfile
    create  weekapaug/config.ru
    create  weekapaug/app.rb
    create  weekapaug/templates/index.html
    create  weekapaug/views/index.rb
    create  weekapaug/.gitignore

Example deploy
--------------

Using Heroku and MongoHQ.

heroku config

    MONGO_DB       => mongodatabasename
    MONGO_HOST     => db.mongohq.com
    MONGO_USER     => user
    MONGO_PASSWORD => password
    HOPTOAD        => apikey123
