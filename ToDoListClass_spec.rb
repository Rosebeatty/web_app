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


RSpec.describe do
    it 'should return items in list' do
         display = Display.new
         to_do_list = ToDoList.new(display)
         list = to_do_list.add_task('apple')
         expect(list).to eql(['apple'])
    end
    
    it 'should return an item in list' do
        output = StringIO.new
        display = Display.new(output)
        to_do_list = ToDoList.new(display)
        description = description
        to_do_list.add_task(Item.new('apple'))
        to_do_list.print_list
        expect(output.string).to eql("apple\n")
    end

    it 'should return a removed item' do
        display =  Display.new
        to_do_list = ToDoList.new(display)
        list = to_do_list.remove_task('pear')
        expect(list).to equal(nil)
    end
end