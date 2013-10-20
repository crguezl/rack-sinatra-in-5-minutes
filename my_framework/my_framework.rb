require 'pp'

VERSION = "0.0.1"

Routes = {}

def get(route, &block)
  Routes[route] = block
end

class App

  def call(env)
    route_handler = Routes[env['PATH_INFO']]
    pp route_handler.inspect
    pp env
    if (route_handler)
      answer = Rack::Request.new(env).instance_eval(&route_handler)
    else 
      answer = ''
    end
    [200, {}, [ answer ] ]
  end

end
  
