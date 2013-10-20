require "my_framework"

get '/' do
  "<h1><a href='/name?you=juana'>hello world!</a></h1>\n"
end

get '/name' do
  "<h1>Hi #{params["you"]}!</h1>\n"
end
