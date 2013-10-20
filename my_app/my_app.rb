require "my_framework"

get '/' do
  <<-"EOS"
   <h1><a href='/name?you=juana'>hello world!</a></h1>

   <form action="/process" method="post">
     Your name: <input type="text" name="firstname" autofocus><br>
     <input type="submit" value="Submit">
   </form>
  EOS
end

get '/name' do
  %Q{<h1><a href="/">Hi #{params["you"]}!</a></h1>\n}
end

put '/process' do
  %Q{<a href="/">Welcome to little Sinatra dear #{params['firstname']}!</a>}
end
