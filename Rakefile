desc "run server"
task :default do
  sh "rackup -Imy_app -Imy_framework my_app/config.ru"
end

desc "run client in '/'" 
task :root do
  sh "curl -v http://localhost:9292"
end

desc "run client in '/name'" 
task :name do
  sh "curl -v http://localhost:9292/name?you=Juana"
end
