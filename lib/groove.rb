require 'rubygems'
require 'x'
require 'sinatra'
require 'mongo'
require 'effigy'
require 'rack_hoptoad'

configure :production do
  enable :raise_errors
end

module Sinatra
  module Templates
    def effigy(name)
      root = File.join File.dirname(__FILE__)
      require File.join(root, "views", "#{name}.rb")
      template = File.read File.join(root, "templates", "#{name}.html")
      view = Object.const_get("#{name}_view".camel_case).new
      view.render(template)
    end
  end
end

include Mongo

class Groove
  class << self
    attr_accessor :config

    def on(config)
      self.config = { :db => 'app', :db_url => 'localhost', :hoptoad => '1234' }
      self.config.merge(config)

      mongo
      hoptoad
    end

    def mongo
      DB = Connection.new(config[:db_url]).db(config[:db])
      if config[:db_user] && config[:db_password]
        DB.authenticate(config[:db_user], config[:db_password])
      end
    end

    def hoptoad
      use Rack::HoptoadNotifier, config[:hoptoad]
    end
  end
end
