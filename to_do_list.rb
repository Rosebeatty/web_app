class Item
    
    attr_reader :description
    
    def initialize(description)
        @description = description
        @completed = false
    end
    
    def complete_task
        @completed = true
    end
    
end


class ToDoList
    
    def initialize()
       @to_do_list = []
    end
    
    def add_task(item)
       @to_do_list.push(item)
    end
    
    def print_list
        @to_do_list.each {|item| puts item.description}
    end
    
    def remove_task(item)
        @to_do_list.delete(item)
    end
        
end



add_item = true
to_do_list = ToDoList.new

while add_item == true 
    puts "Add an item to your to do list"
    item = Item.new(gets.chomp)
    to_do_list.add_task(item) 
    to_do_list.print_list()
    puts "Do you want to add another item? Yes or no?"
    response = gets.chomp
    if response!="yes"
    add_item = false
    end
    to_do_list.print_list()
end