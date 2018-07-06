require "sinatra"

get "/" do
    puts "hello"
    send_file "index.html"
    send_file "style.css"
   
end

