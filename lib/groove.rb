class Groove
  class << self
    attr_accessor :config
  end

  def initialize
    @@config = { :db => 'app', :db_url => 'localhost', :hoptoad => '1234' }
  end
end

require 'rubygems'
require 'x'
require 'groove/sinatra'
require 'groove/mongo'
require 'groove/effigy'
require 'groove/hoptoad'
