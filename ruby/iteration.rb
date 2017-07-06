#RELEASE 0
def welcome_to_iteration
  name1 = "Matthew"
  name2 = "Bruno"
  puts "Welcome to iteration! The block has not yet ran."
  yield(name1, name2)
  puts "The block has run, hooray!"
end

welcome_to_iteration { |name1, name2| puts "#{name1} and #{name2} are learning about iteration!" }


#RELEASE 1
pizza_toppings = ["sauce", "cheese", "meat", "veggies", "fruits"]
types_of_toppings = {
  :cheese => "mozzarella, cheddar, parmeasan",
  :meat => "pepperoni, bacon, ham, sausage",
  :veggies => "jalapeno, onions, mushrooms",
  :fruits => "pineapple, strawberry, mango"
}

puts "pizza_toppings before .each: "
p pizza_toppings
puts "types_of_toppings before .each: "
p types_of_toppings

# make each topping all capital letters
pizza_toppings.each do |toppings|
  p toppings.upcase
end

# permanently modify strings in the array
pizza_toppings.map! do |toppings|
  toppings.upcase
end
p pizza_toppings

# modify items in a hash
types_of_toppings.each do |topping, topping_kinds|
  p topping.upcase
  p topping_kinds.upcase
end

puts "pizza_toppings after .map! (permanently changed)"
p pizza_toppings
puts "types_of_toppings after .each (not permanently changed)"
p types_of_toppings


#RELEASE 2
#1 delete_if permanently modifies an array
words = ["tropical", "building", "street", "bake", "hi", "dictionary", "x-ray"]
numbers =
  {
    :even => "2, 4, 6, 8, 10",
    :odd =>"1, 3, 5, 7, 9"
  }
puts "#1"
puts "Before delete_if: "
p words
p numbers
words.delete_if { |word| word.length > 4}
numbers.delete_if { |type_of_number, number| type_of_number == :even}
puts "After delete_if:"
p words
p numbers
puts " "

#2 keep_if permanently modifies and array
words = ["tropical", "building", "street", "bake", "hi", "dictionary", "x-ray"]
numbers =
  {
    :even => "2, 4, 6, 8, 10",
    :odd =>"1, 3, 5, 7, 9"
  }
puts "#2"
puts "Before keep_if: "
p words
p numbers
words.keep_if { |word| word.length > 4}
numbers.keep_if { |type_of_number, number| type_of_number == :even}
puts "After keep_if: "
p words
p numbers
puts " "


#3 reject does not permanently modify an array, so added the
#  bang operator to make the reject method's effect more clear
words = ["tropical", "building", "street", "bake", "hi", "dictionary", "x-ray"]
numbers =
  {
    :even => "2, 4, 6, 8, 10",
    :odd =>"1, 3, 5, 7, 9"
  }
puts "#3"
puts "Before reject!: "
p words
p numbers
words.reject! { |word| word.length < 5 }
numbers.reject! { |type_of_number, number| type_of_number == :even}
puts "After reject!: "
p words
p numbers
puts " "

#4 drop_while does not permantly modify an array, and the bang operator
#  doesn't apply, so added in an extra printout of drop_while doing it's
#  fun little method
words = ["tropical", "building", "street", "bake", "hi", "dictionary", "x-ray"]
puts "#4"
puts "Before drop_while: "
p words
puts "'During' drop_while: "
p words.drop_while { |word| word.length > 3}
puts "After drop_while: "
p words