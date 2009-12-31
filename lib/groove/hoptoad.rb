require 'rack_hoptoad'

use Rack::HoptoadNotifier, Groove.config[:hoptoad]
