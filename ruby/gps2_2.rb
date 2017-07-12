# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # create a hash
  # set default quantity
  # print the list to the console (last method)
# output: hash
def make_list(items)
  grocery_bag = {}
  items_array = items.split(' ')
  items_array.each do |item|
    grocery_bag[item] = 1
  end
  p grocery_bag
end
grocery_bag = make_list("carrot apple cereal pizza")


# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
  # add item (key) with quantity (value) to hash
# output: hash, value
def add_item(item, grocery_bag, quantity = 1)
  grocery_bag[item] = quantity
  print grocery_bag
end
add_item("lemonade", grocery_bag, 2)
add_item("tomato", grocery_bag, 3)
add_item("onion", grocery_bag, 1)
add_item("ice cream", grocery_bag, 4)


# Method to remove an item from the list
# input: list, item name
# steps: specify list and item (key) to remove
# output: hash
def remove_item(item, grocery_bag)
  grocery_bag.delete(item)
  p grocery_bag
end
remove_item("lemonade", grocery_bag)


# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: specify list, item (key) and quantity user would like to update to
# output: hash, key and value that were updated
def update_quantity(item, grocery_bag, quantity)
  grocery_bag[item] = quantity
  p grocery_bag
end
update_quantity("ice cream", grocery_bag, 1)


# Method to print a list and make it look pretty
# input: hash
# steps: use 'each' to pull keys and values from hash and use 'puts' print them on new line
# " Get #{quantity} #{item}s"
# output: string for each key value pair
def print_list(grocery_bag)
  grocery_bag.each do |item, quantity|
    if item == "tomato" && quantity > 1
      puts "Get #{quantity} #{item}es"
    elsif quantity == 1
      puts "Get #{quantity} #{item}."
    else
      puts "Get #{quantity} #{item}s."
    end
  end
end
print_list(grocery_bag)