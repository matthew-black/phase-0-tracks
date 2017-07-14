class TodoList
  attr_reader :get_items

  def initialize (array)
    @get_items = array
  end

  def add_item(item)
    @get_items << item
  end

  def delete_item(item)
    @get_items.delete(item)
  end

  def get_item(index)
    @get_items[index]
  end

end

  #--Test calls for TodoList class methods--#

    list = TodoList.new(["do the dishes", "mow the lawn"])
    puts "Initialized list array: #{list.get_items}"

    list.add_item("mop")
    puts "List after adding 'mop': #{list.get_items}"


    list.delete_item("mop")
    puts "List after deleting 'mop: #{list.get_items}"

    puts "Item at index 0: #{list.get_item(0)}"