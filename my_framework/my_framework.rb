require 'pp'

VERSION = "0.0.1"

Routes = {}

def get(route, &block)
  Routes[route] = block
end

class App

  def call(env)
    req = Rack::Request.new(env)
    route_handler = Routes[req.path_info]
    answer = if (route_handler)
               req.instance_eval(&route_handler)
             else 
              ''
             end
    [200, {}, [ answer ] ]
  end

end
  
