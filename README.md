Groove
======

Generator to create a web application consisting of
HTML5, Less CSS, jQuery, Effigy, Sinatra, MongoDB, and Hoptoad.

Usage
-----

groove weekapaug

    create  weekapaug/Gemfile
    create  weekapaug/config.ru
    create  weekapaug/app.rb
    create  weekapaug/templates/index.html
    create  weekapaug/views/index.rb
    create  weekapaug/public/css/screen.css
    create  weekapaug/public/css/screen.less
    create  weekapaug/README.md
    create  weekapaug/.gitignore

Example deploy
--------------

Using Heroku and MongoHQ.

heroku config

    MONGO_DB       => weekapaug
    MONGO_HOST     => swan.mongohq.com
    MONGO_PORT     => 27027
    MONGO_USER     => user
    MONGO_PASSWORD => password
    HOPTOAD        => apikey123
