class ToDoList
    
    def initialize(display = nil)
       @to_do_list = []
       @display = display
    end
    
    def add_task(item)
       @to_do_list.push(item)
    end
    
    def print_list()
        @to_do_list.map {|item| item.description}
    end
    
    def remove_task(item)
        @to_do_list.delete(item)
    end
        
end