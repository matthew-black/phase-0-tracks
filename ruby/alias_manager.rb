# Pseudocode:

# Step One = Super easy:
# Swap the first and last names simply by splitting
# a full_name string into an array of two words. Then,
# flip the order of the items in the array and join
# back into a single string.

# Step Two
# Set variables that contain the vowels and
# consonants in strings. Split these strings
# into arrays so you can use them as logic
# conditions.
# If the letter of the string is a vowel,
# use the vowel variable as an index to do +1
# Else the letter is a consonant, use the
# consonant variable as an index to do +1.
# To deal with capital letters, we'll need to
# add some conditional logic to detect case
# inside the loop that we're using to iterate
# through the arrays. (Probably need to make two
# more variables that contain uppercase vowels
# and consonants? And use a method that looks to
# see if a variable contains a specific character.)

# -------------------------------------------------------- #

#ALIAS MANAGER PROGRAM


  #METHOD THAT FLIPS THE ORDER OF FIRST NAME AND
  #LAST NAME WHEN PROVIDED IN A SINGLE STRING:
def first_last_swap (full_name_string)
    swapped_full_name_array = full_name_string.split(' ').rotate(1)
    swapped_full_name_string = swapped_full_name_array.join(' ')
end


  #METHOD THAT CHANGES THE NAME STRING INTO
  #AN ALIAS:
def name_to_alias(string)
    #--variables to be used inside the while loop--#
  vowels_downcase = "aeiou"
  vowels_downcase_array = vowels_downcase.split('')
  vowels_upcase = "AEIOU"
  vowels_upcase_array = vowels_upcase.split('')
  consonants_downcase = "bcdfghjklmnpqrstvwxyz"
  consonants_downcase_array = consonants_downcase.split('')
  consonants_upcase = "BCDFGHJKLMNPQRSTVWXYZ"
  consonants_upcase_array = consonants_upcase.split('')
    #--loop that iterates through and modifies a string--#
  alias_string = ""
  count = 0
  while count < string.length
    if string[count] == " "
      alias_string[count] = " "
      count +=1
    elsif string[count].downcase == "z"
      if string[count] == "z"
        alias_string[count] = "b"
      elsif string[count] == "Z"
        alias_string[count] = "B"
      end
      count += 1
    elsif string[count].downcase == "u"
      if string[count] == "u"
        alias_string[count] = "a"
      elsif
        alias_string[count] = "A"
      end
      count += 1
    elsif vowels_downcase_array.include? string[count]
      converted = vowels_downcase.index(string[count]) + 1
      alias_letter = vowels_downcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif consonants_downcase_array.include? string[count]
      converted = consonants_downcase.index(string[count]) + 1
      alias_letter = consonants_downcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif vowels_upcase_array.include? string[count]
      converted = vowels_upcase.index(string[count]) + 1
      alias_letter = vowels_upcase[converted]
      alias_string[count] = alias_letter
      count += 1
    elsif consonants_upcase_array.include? string[count]
      converted = consonants_upcase.index(string[count]) + 1
      alias_letter = consonants_upcase[converted]
      alias_string[count] = alias_letter
      count += 1
    else
      alias_string[count] = " "
      count += 1
    end
  end
alias_string
end


  #USER INTERFACE:
puts "Welcome to the world's most advanced alias creation program."
puts " "
puts "Please type a first and last name. Then, press enter to receive an alias."
puts " "
puts "When you've finished creating aliases, type 'quit' and press enter."
puts " "
names_and_aliases = [[],[]]
not_done = true
  #--uses above methods to take a full name from a user, convert it--#
  #--into an alias, then store the names and aliases in an array--#
while not_done
  print "Name: "
  user_response = gets.chomp
  if user_response.downcase == "quit"
    not_done = false
  else
    names_string = first_last_swap(user_response)
    alias_string = name_to_alias(names_string)
    names_and_aliases[0] << "#{user_response}"
    names_and_aliases[1] << "#{alias_string}"
  end
end
  #--retrieves and displays names and aliases that have been created--#
puts " "
puts "Here are the names and aliases you've generated:"
puts " "
count = 0
while count < names_and_aliases[0].length
  puts "Name: #{names_and_aliases[0][count]}  ==  Alias: #{names_and_aliases[1][count]}"
  count += 1
end
puts " "
puts "Thank you for using the world's most advanced alias creation program."