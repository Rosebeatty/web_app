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