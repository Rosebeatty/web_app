require "sinatra"
require_relative "./ItemClass"
require_relative "./ToDoListClass"
require_relative "./EngineClass"
require_relative "./DisplayClass"


    get "/" do 
        erb :'tasks/home'
    end

    get "/home" do 
        erb :'tasks/home'
    end

    

    post '/submit/' do    
        new_item = Item.new(params[:listItem])
        list.add_task(new_item)
        "List: #{list.print_list}"     
    end

    get '/lists/new' do
        erb :'lists/new'
    end

    post '/lists/new' do
        list = ToDoList.new()
    end


