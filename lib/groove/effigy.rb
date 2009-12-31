require 'effigy'

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
