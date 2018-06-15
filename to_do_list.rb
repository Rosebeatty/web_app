add_item = true

while add_item == true 
puts "Add an item to your to do list"
list = gets.chomp 
puts list
puts "Do you want to add another item? Yes or no?"
a = gets.chomp
  if a!="yes"
    add_item = false
  end
    puts list
end
