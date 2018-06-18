add_item = true
to_do_list = []

while add_item == true 
    puts "Add an item to your to do list"
    item = gets.chomp
    to_do_list.push(item) 
    puts to_do_list
    puts "Do you want to add another item? Yes or no?"
    response = gets.chomp
    if response!="yes"
    add_item = false
    end
    puts to_do_list
end
