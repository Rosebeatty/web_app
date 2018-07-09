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
        @description
    end
end


class ToDoList
    
    def initialize(display)
       @to_do_list = []
       @display = display
    end
    
    def add_task(item)
       @to_do_list.push(item)
    end
    
    def print_list()
        list_of_items = @to_do_list.map {|item| item.description}
        @display.present(list_of_items)
    end
    
    def remove_task(item)
        @to_do_list.delete(item)
    end
        
end


class Engine 
    def initialize(to_do_list, display)
      @to_do_list = to_do_list
      @display = display
    end
    
    def user_response
        user_prompts
        response = @display.receive
        while response == "yes"
        user_prompts
        response = @display.receive    
        end 
        @to_do_list.print_list()  
    end
    
    def user_prompts
        @display.present("Add an item to your to do list")
        thing = @display.receive
        item = Item.new(thing)
        @to_do_list.add_task(item) 
        @to_do_list.print_list()
        @display.present("Do you want to add another item? Yes or no?")
    end    
    
end

class Display
  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end
    
  def present(message)
    @output.puts message
  end
    
  def receive 
    @input.gets.chomp
  end
end
        
    display = Display.new  
    to_do_list = ToDoList.new(display)
    engine = Engine.new(to_do_list, display)
    engine.user_response
    



   
