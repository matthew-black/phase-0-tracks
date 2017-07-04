# Program opens with a welcome message and
# prompts the user for client-related info
#   * Need to declare the name of the hash
#   * before trying to stuff things in it.
#
# Use <gets> to aquire information to be stored in
# a hash. Before setting as a hash value, make sure
# the program has it set to the correct data type.
# (Probably only need if/else stuff for boolean.)
#
# Print the entire hash.
#
# Prompt user to choose a key to update or type "none."
#   * Need to convert the string response to symbol
#   * in order to use it as a variable inside the
#   * client_hash[VARIABLE-GOES-HERE] thing.
#   * (Maybe there's a <.to-symbol> kind of thing?)
#
# Print the (possibly updated) hash one more time.

puts "Welcome to the Client-Remembertron-5000!"
puts "Please provide the following client information:"
  client_hash = {}
  print "Name: "
  client_hash[:name] = gets.chomp

  print "Age (using digits): "
  client_hash[:age] = gets.to_i

  print "Number of children (using digits): "
  client_hash[:number_of_kids] = gets.to_i

  print "Decor theme: "
  client_hash[:decor_theme] = gets.chomp

  print "Color palette: "
  client_hash[:color_palatte] = gets.chomp

  print "Did client pay for 'rush' service? (y or n): "
  rush_answer = gets.chomp
    if rush_answer == "n"
      rush_service = false
    elsif rush_answer == "y"
      rush_service = true
    else
      rush_service = nil
    end
  client_hash[:rush_service] = rush_service

puts "Here is the information you've entered:"
puts client_hash

puts "Enter the name of the key value you'd like to change (e.g. decor_theme),
  or type 'none' if no updates are needed: "
  mod_response = gets.chomp
    if mod_response == "none"
    elsif mod_response == "rush_service"
      print "Please enter a new value for rush_service (y or n): "
      mod_value = gets.chomp
        if mod_value == "n"
          mod_value = false
        elsif mod_value == "y"
          mod_value = true
        else
          mod_value = nil
        end
      mod_response_symbol = mod_response.to_sym
      client_hash[mod_response_symbol] = mod_value
    else
      print "Please enter the new value for #{mod_response}: "
      mod_value = gets.chomp
      mod_response_symbol = mod_response.to_sym
      client_hash[mod_response_symbol] = mod_value
    end

puts "Here is the final version of this client's information:"
puts client_hash