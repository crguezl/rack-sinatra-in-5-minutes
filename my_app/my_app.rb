require "my_framework"

get '/' do
  "<h1>hello world!</h1>\n"
end

get '/name' do
  "<h1>Hi #{params["you"]}!</h1>\n"
end
