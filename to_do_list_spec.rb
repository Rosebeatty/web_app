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





RSpec.describe do
    it 'should return items in list' do
         to_do_list = ToDoList.new
         list = to_do_list.add_task('apple')
         expect(list).to eql(['apple'])
    end
    
   # it 'should return an item in list' do
        to_do_list = ToDoList.new
        to_do_list.add_task(Item.new('apple'))
        description = description
        to_do_list.print_list
        expect(to_do_list.print_list).to eql('apple')
    end
    
    it 'should return true' do
        description = description
        item = Item.new(description)
        expect(item.complete_task).to equal(true)
    end
    
    it 'should return a removed item' do
        to_do_list = ToDoList.new
        list = to_do_list.remove_task('pear')
        expect(list).to equal(nil)
    end
    
   
    
end
         