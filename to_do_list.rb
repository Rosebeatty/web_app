require 'sinatra'
class MySinatraApp < Sinatra::Base
  get '/' do

      
class Item
    
    attr_reader :description
    
    def initialize(description)
        @description = description
        @completed = false
    end
    
    def complete_task
        @completed = true
    end
    
    def description
    end
end


class ToDoList
    
    def initialize()
       @to_do_list = []
    end
    
    def add_task(item)
       @to_do_list.push(item)
    end
    
    def print_list()
        @to_do_list.each {|item| puts item.description}
    end
    
    def remove_task(item)
        @to_do_list.delete(item)
    end
        
end

class Engine 
    def initialize(to_do_list)
      @to_do_list = to_do_list
    end
    
    def user_response
        user_prompts
        response = gets.chomp
        while response == "yes"
        user_prompts
        response = gets.chomp    
        end 
        @to_do_list.print_list()  
    end
    
    def user_prompts
        puts "Add an item to your to do list"
        item = Item.new(gets.chomp)
        @to_do_list.add_task(item) 
        @to_do_list.print_list()
        puts "Do you want to add another item? Yes or no?"
    end
end
        
        
    to_do_list = ToDoList.new
    engine = Engine.new(to_do_list)
    engine.add_one
    
  
  end
end


   
